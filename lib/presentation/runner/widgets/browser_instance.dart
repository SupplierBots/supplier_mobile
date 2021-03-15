import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:supplier_mobile/application/runner/cubit/runner_cubit.dart';

class BrowserInstance extends HookWidget {
  const BrowserInstance(this.uid);

  final String uid;
  @override
  Widget build(BuildContext context) {
    InAppWebViewController webViewController;

    final finished = useState(false);

    final activeTask =
        context.select((RunnerCubit runner) => runner.state.visibleTask);

    return Transform.scale(
      scale: activeTask.fold(() => 0.00001, (a) => a == uid ? 1 : 0.0001),
      child: InAppWebView(
        initialUrlRequest: URLRequest(
          url: Uri.parse(
            'https://recaptcha-demo.appspot.com/recaptcha-v2-invisible.php',
          ),
        ),
        onWebViewCreated: (controller) {
          webViewController = controller;
          webViewController.addJavaScriptHandler(
              handlerName: 'supplierConnection',
              callback: (List<dynamic> messages) {
                final message = messages.first as String;
                print(message);
                final runner = context.read<RunnerCubit>();

                if (message == 'captcha') {
                  runner.setCaptcha(uid);
                } else if (message == 'captcha-solved') {
                  if (runner.state.visibleTask
                      .fold(() => false, (a) => a == uid)) {
                    runner.closeVisibleTask();
                  }
                  runner.setTaskProgress(
                    uid: uid,
                    message: 'Done (solved captcha)',
                  );
                  finished.value = true;
                } else if (message == 'finished') {
                  runner.setTaskProgress(
                    uid: uid,
                    message: 'Done (no captcha challenge)',
                  );
                  finished.value = true;
                }
              });
        },
        onLoadStop: (InAppWebViewController controller, Uri url) async {
          if (finished.value) return;
          final runner = context.read<RunnerCubit>();

          runner.setTaskProgress(
            uid: uid,
            message: 'Loaded page',
          );
          await controller.evaluateJavascript(source: '''

(function() {

  try {


      const watchCaptchaChallenge = async () => {
          while (!document.querySelector("iframe[title='recaptcha challenge']")) {
              await new Promise(r => setTimeout(r, 250));
          }
          const captchaIFrame = document.querySelector("iframe[title='recaptcha challenge']");
          while (captchaIFrame.style.height == "100%") {
              await new Promise(r => setTimeout(r, 250));
          }

          if (captchaIFrame.style.height != "0px") {
              window.flutter_inappwebview.callHandler('supplierConnection', "captcha");
              const callbackName = document.querySelector("#g-recaptcha, .g-recaptcha").dataset.callback;
              const orginalCallback = window[callbackName];
              window[callbackName] = (res) => {
                  window.flutter_inappwebview.callHandler('supplierConnection', "captcha-solved");
                  orginalCallback(res);
              }
          }
      }
      watchCaptchaChallenge();
      if (document.querySelector('.g-recaptcha')) {
          document.querySelector('.g-recaptcha').click();
      }

      if(document.querySelector('pre') && document.querySelector('pre').textContent.includes('g-recaptcha-response')) {
        window.flutter_inappwebview.callHandler('supplierConnection', "finished");
      }
    } catch (ex) {
       window.flutter_inappwebview.callHandler('supplierConnection', ex.toString());
    }

    return 0;
})();

              ''');
        },
      ),
    );
  }
}
