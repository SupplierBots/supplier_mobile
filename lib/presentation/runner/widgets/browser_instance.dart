import 'dart:convert' show json;
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:supplier_mobile/application/cookies/cookies_cubit.dart';
import 'package:supplier_mobile/application/profiles/profiles_cubit.dart';
import 'package:supplier_mobile/application/runner/cubit/runner_cubit.dart';
import 'package:supplier_mobile/application/tasks/tasks_cubit.dart';
import 'package:supplier_mobile/presentation/runner/widgets/browser_message.dart';
import 'package:supplier_mobile/presentation/tasks/widgets/form/predefined_products.dart';

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

    final finished = useState(false);
    final activeTask =
        context.select((RunnerCubit runner) => runner.state.visibleTask);

    void _updateProgress(String status) {
      context.read<RunnerCubit>().setTaskProgress(
            uid: uid,
            message: status,
          );
    }

    String _createAddressCookie() {
      final task = context.read<TasksCubit>().state.tasks[uid];
      final profile =
          context.read<ProfilesCubit>().state.profiles[task.profileName];

      return '${profile.firstName}%20${profile.lastName}|${profile.email}|${profile.phoneNumber.replaceAll(' ', '')}|${profile.address}||${profile.city}|undefined|${profile.postcode}|PL|'
          .replaceAll(' ', '%20')
          .replaceAll('@', '%40');
    }

    void _startTask() async {
      await webViewController.loadUrl(
          urlRequest: URLRequest(
        url: Uri.parse('about:blank'),
      ));
      await webViewController.clearCache();
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
        value: _createAddressCookie(),
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

    void _printCookies() async {
      final cookies =
          await webViewController.ios.cookieHandler.ios.getAllCookies();
      print(cookies.firstWhere((c) => c.name == 'cart'));
    }

    Future<void> _messagesHandler(List<dynamic> messages) async {
      final runner = context.read<RunnerCubit>();

      final message =
          BrowserMessage.fromJson(messages.first as Map<String, dynamic>);
      switch (message.action) {
        case 'update-status':
          {
            _updateProgress(message.details);
            if (message.details == 'cookie-check') {
              _printCookies();
            }
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
        case 'failed':
          {
            if (message.details == 'Sold out') {
              _updateProgress('Sold out');
            } else {
              _updateProgress('Failed');
            }
            _startTask();
            break;
          }
        case 'success':
          {
            _updateProgress('Success');
            finished.value = true;
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
          webViewController.addJavaScriptHandler(
            handlerName: 'supplierConnection',
            callback: _messagesHandler,
          );
          _startTask();
        },
        onLoadStart: (InAppWebViewController controller, Uri url) async {
          if (!Platform.isAndroid) return;
          final stealthJs =
              await rootBundle.loadString('assets/javascript/stealth.min.js');
          controller.evaluateJavascript(source: stealthJs);
        },
        onLoadStop: (InAppWebViewController controller, Uri url) async {
          if (finished.value) return;
          if (url.toString() != 'https://www.supremenewyork.com/mobile') return;

          _updateProgress('Waiting for product');

          final task = context.read<TasksCubit>().state.tasks[uid];
          final profile =
              context.read<ProfilesCubit>().state.profiles[task.profileName];

          final injectionTemplate =
              await rootBundle.loadString('assets/javascript/supremeInject.js');

          final injection = injectionTemplate
              .replaceFirst(
                '\$PRODUCT\$',
                json.encode(
                  predefinedProducts.firstWhere((p) => p.name == task.product),
                ),
              )
              .replaceFirst(
                '\$COLORS\$',
                json.encode(task.colors),
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
                json.encode(task.size),
              )
              .replaceFirst(
                '\$PAYMENT_DETAILS\$',
                json.encode({
                  'number': profile.creditCardNumber,
                  'month': profile.expiryMonth,
                  'year': profile.expiryYear,
                  'cvv': profile.securityCode,
                }),
              );
          controller.evaluateJavascript(
            source: injection,
          );
          final cardinalPatch =
              await rootBundle.loadString('assets/javascript/cardinalPatch.js');
          controller.evaluateJavascript(
            source: cardinalPatch,
          );
        },
        androidOnPermissionRequest: (controller, origin, resources) async {
          return PermissionRequestResponse(
            resources: resources,
            action: PermissionRequestResponseAction.GRANT,
          );
        },
      ),
    );
  }
}
