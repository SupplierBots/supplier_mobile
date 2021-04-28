import 'dart:convert' show json;
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:supplier_mobile/application/cookies/cookies_cubit.dart';
import 'package:supplier_mobile/application/profiles/profiles_cubit.dart';
import 'package:supplier_mobile/application/remote/remote_cubit.dart';
import 'package:supplier_mobile/application/runner/cubit/runner_cubit.dart';
import 'package:supplier_mobile/application/settings/settings_cubit.dart';
import 'package:supplier_mobile/application/tasks/tasks_cubit.dart';
import 'package:supplier_mobile/domain/remote/checkout_report_payload/checkout_report_payload.dart';
import 'package:supplier_mobile/domain/remote/remote_repository.dart';
import 'package:supplier_mobile/domain/tasks/colors_keywords.dart';
import 'package:supplier_mobile/domain/webhooks/webhooks_repository.dart';
import 'package:supplier_mobile/inject.dart';
import 'package:supplier_mobile/presentation/runner/widgets/address_cookie_generator.dart';
import 'package:supplier_mobile/presentation/runner/widgets/message_bridge/browser_message.dart';
import 'package:supplier_mobile/presentation/runner/widgets/message_bridge/task_result.dart';

class BrowserInstance extends HookWidget {
  const BrowserInstance(this.uid);
  final String uid;

  @override
  Widget build(BuildContext context) {
    InAppWebViewController webViewController;

    final _options = InAppWebViewGroupOptions(
      crossPlatform: InAppWebViewOptions(
        incognito: true,
        useShouldOverrideUrlLoading: true,
        mediaPlaybackRequiresUserGesture: false,
      ),
      ios: IOSInAppWebViewOptions(
        allowsInlineMediaPlayback: true,
      ),
    );

    final taskAttempt = useState(0);
    final restockMode = useState(false);
    final checkoutDelay = useState(0);
    final finished = useState(false);

    final activeTask =
        context.select((RunnerCubit runner) => runner.state.visibleTask);

    void _updateProgress(String status) {
      context.read<RunnerCubit>().setTaskProgress(
            uid: uid,
            message: status,
          );
    }

    Future<void> _loadPage() async {
      await webViewController.loadUrl(
          urlRequest: URLRequest(
        url: Uri.parse('about:blank'),
      ));
      await webViewController.ios.clearInstanceData();
      await webViewController.ios.cookieHandler.deleteAllCookies();

      final cookies = context.read<CookiesCubit>().state.getGoogleCookies();

      if (cookies.isNotEmpty) {
        for (final cookie in cookies) {
          await webViewController.ios.cookieHandler.setCookie(
            url: Uri(host: cookie.domain, path: cookie.path),
            name: cookie.name,
            value: cookie.value as String,
            domain: cookie.domain,
            path: cookie.path,
            expiresDate: cookie.expiresDate,
            isSecure: cookie.isSecure,
            isHttpOnly: cookie.isHttpOnly,
            sameSite: cookie.sameSite,
          );
        }
      }

      await webViewController.ios.cookieHandler.setCookie(
        url: Uri(host: 'www.supremenewyork.com', path: '/'),
        name: 'js-address',
        value: generateAddressCookie(context, uid),
        domain: 'www.supremenewyork.com',
        expiresDate: DateTime.now()
            .add(const Duration(days: 180))
            .millisecondsSinceEpoch,
        isSecure: false,
        isHttpOnly: false,
      );

      _updateProgress('Loading page');
      webViewController.loadUrl(
          urlRequest: URLRequest(
        url: Uri.parse('https://www.supremenewyork.com/mobile'),
      ));
    }

    Future<void> _startTask() async {
      taskAttempt.value++;
      await _loadPage();
    }

    Future<void> _messagesHandler(List<dynamic> messages) async {
      final runner = context.read<RunnerCubit>();

      final message =
          BrowserMessage.fromJson(messages.first as Map<String, dynamic>);

      switch (message.action) {
        case 'update-status':
          {
            _updateProgress(message.details as String);
            break;
          }
        case 'captcha':
          {
            runner.setCaptcha(uid);
            break;
          }
        case 'captcha-solved':
          {
            if (runner.state.visibleTask.fold(() => false, (a) => a == uid)) {
              runner.closeVisibleTask();
            }
            break;
          }
        case 'task-result':
          {
            final result =
                TaskResult.fromJson(message.details as Map<String, dynamic>);
            final task = context.read<TasksCubit>().state.tasks[uid];
            final settings = context.read<SettingsCubit>().state;
            final profile =
                context.read<ProfilesCubit>().state.profiles[task.profileName];

            final checkoutPayload = CheckoutReportPayload(
              attempt: taskAttempt.value,
              checkoutDelay: checkoutDelay.value,
              result: result,
              profileName: task.profileName,
              region: profile.region,
            );

            _updateProgress(result.message);

            getIt<RemoteRepository>().reportCheckout(checkoutPayload);

            if (settings.webhookConfig.url.isNotEmpty &&
                (!settings.webhookConfig.successOnly ||
                    result.status == 'paid')) {
              getIt<WebhooksRepository>().sendCheckoutWebhook(
                checkoutPayload,
                settings.webhookConfig,
              );
            }

            final retryStatus = ['failed', '404', '500', 'outOfStock'];
            if (retryStatus.contains(result.status)) {
              _startTask();
            } else {
              finished.value = true;
            }
            break;
          }
        case 'enable-restocks':
          {
            restockMode.value = true;
            break;
          }
        case 'clean-refresh':
          {
            _loadPage();
            break;
          }
        case 'debug':
          {
            print(message.details);
            break;
          }
      }
    }

    return Transform.scale(
      scale: activeTask.fold(() => 0.00001, (a) => a == uid ? 1 : 0.0001),
      child: InAppWebView(
        initialOptions: _options,
        onWebViewCreated: (controller) async {
          webViewController = controller;
          final nativeFunctionsCache = await rootBundle
              .loadString('assets/javascript/nativeFunctionsCache.js');
          await webViewController.addUserScript(
            userScript: UserScript(
              source: nativeFunctionsCache,
              injectionTime: UserScriptInjectionTime.AT_DOCUMENT_START,
            ),
          );
          webViewController.addJavaScriptHandler(
            handlerName: 'supplierConnection',
            callback: _messagesHandler,
          );
          _startTask();
        },
        onLoadStop: (InAppWebViewController controller, Uri url) async {
          if (finished.value) return;
          if (!url.toString().contains('www.supremenewyork.com')) return;

          final task = context.read<TasksCubit>().state.tasks[uid];
          final profile =
              context.read<ProfilesCubit>().state.profiles[task.profileName];

          final remote = context.read<RemoteCubit>().state;

          if (remote.products[task.product] == null) {
            _updateProgress('Item no longer available');
            finished.value = true;
            return;
          }

          checkoutDelay.value = restockMode.value
              ? remote.delays.restocksCheckout
              : remote.delays.minCheckout +
                  Random().nextInt(
                      remote.delays.maxCheckout - remote.delays.minCheckout);

          final injectionTemplate =
              await rootBundle.loadString('assets/javascript/supremeInject.js');

          final injection = injectionTemplate
              .replaceFirst(
                '\$PRODUCT\$',
                json.encode(
                  remote.products[task.product],
                ),
              )
              .replaceFirst(
                '\$COLORS\$',
                json.encode(ColorsKeywords.fromList(task.colors)),
              )
              .replaceFirst(
                '\$ANY_SIZE\$',
                json.encode(task.anySize),
              )
              .replaceFirst(
                '\$ANY_COLOR\$',
                json.encode(task.anyColor),
              )
              .replaceFirst(
                '\$SIZE\$',
                json.encode({
                  'primary': task.size,
                  'anySizeOption': task.anySizeOption,
                }),
              )
              .replaceFirst(
                '\$DELAYS\$',
                json.encode({
                  'checkout': checkoutDelay.value,
                  'refresh': remote.delays.refresh,
                }),
              )
              .replaceFirst(
                '\$PAYMENT_DETAILS\$',
                json.encode({
                  'number': profile.creditCardNumber,
                  'month': profile.expiryMonth,
                  'year': profile.expiryYear,
                  'cvv': profile.securityCode,
                  'state': convertStateToCode(profile.state) ?? 'N/A'
                }),
              )
              .replaceFirst(
                '\$REGION\$',
                json.encode(profile.region),
              );
          controller.evaluateJavascript(
            source: injection,
          );
        },
      ),
    );
  }
}
