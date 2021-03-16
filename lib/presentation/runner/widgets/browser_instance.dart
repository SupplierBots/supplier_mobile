import 'dart:io';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:supplier_mobile/application/runner/cubit/runner_cubit.dart';
import 'package:supplier_mobile/presentation/runner/widgets/browser_message.dart';

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

    void _messagesHandler(List<dynamic> messages) {
      final runner = context.read<RunnerCubit>();

      final message =
          BrowserMessage.fromJson(messages.first as Map<String, dynamic>);

      switch (message.action) {
        case 'update-status':
          {
            _updateProgress(message.details);
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
            finished.value = true;
            break;
          }
        case 'success':
          {
            _updateProgress('Success');
            finished.value = true;
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
          webViewController.clearCache();
          _updateProgress('Loading page');
          webViewController.loadUrl(
              urlRequest: URLRequest(
            url: Uri.parse('https://www.supremenewyork.com/mobile'),
          ));
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
          final injection =
              await rootBundle.loadString('assets/javascript/supremeInject.js');

          controller.evaluateJavascript(source: injection);
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
