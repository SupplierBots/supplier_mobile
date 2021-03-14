import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:supplier_mobile/application/runner/cubit/runner_cubit.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BrowserInstance extends HookWidget {
  @override
  Widget build(BuildContext context) {
    WebViewController webView;

    final finished = useState(false);

    final activeTask =
        context.select((RunnerCubit runner) => runner.state.visibleTask);

    return Transform.scale(
      scale: activeTask.isSome() ? 1 : 0.00001,
      child: WebView(
        initialMediaPlaybackPolicy: AutoMediaPlaybackPolicy.always_allow,
        initialUrl:
            'https://recaptcha-demo.appspot.com/recaptcha-v2-invisible.php',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController controller) {
          webView = controller;
          webView.clearCache();
          print('assigned controller');
        },
        javascriptChannels: {
          JavascriptChannel(
            name: 'supplierConnection',
            onMessageReceived: (JavascriptMessage javascriptMessage) {
              print(javascriptMessage.message);
              final runner = context.read<RunnerCubit>();

              if (javascriptMessage.message == 'captcha') {
                runner.setCaptcha(
                  runner.state.tasksProgress.entries.first.key,
                );
              } else if (javascriptMessage.message == 'captcha-solved') {
                runner.closeVisibleTask();
                runner.setTaskProgress(
                  task: runner.state.tasksProgress.entries.first.key,
                  message: 'Done (solved captcha)',
                );
                finished.value = true;
              } else if (javascriptMessage.message == 'finished') {
                runner.setTaskProgress(
                  task: runner.state.tasksProgress.entries.first.key,
                  message: 'Done (no captcha challenge)',
                );
                finished.value = true;
              }
            },
          )
        },
        onPageFinished: (String url) async {
          if (finished.value) return;
          final runner = context.read<RunnerCubit>();

          runner.setTaskProgress(
            task: runner.state.tasksProgress.entries.first.key,
            message: 'Loaded page',
          );
          await webView.evaluateJavascript('''

(function() {
    const watchCaptchaChallenge = async () => {
        const captchaIFrame = document.querySelector("iframe[title='recaptcha challenge']");
        while (captchaIFrame.style.height == "100%") {
            await new Promise(r => setTimeout(r, 250));
        }
        if (captchaIFrame.style.height != "0px") {
            window.supplierConnection.postMessage("captcha");
            const callbackName = document.querySelector("#g-recaptcha, .g-recaptcha").dataset.callback;
            const orginalCallback = window[callbackName];
            window[callbackName] = (res) => {
                window.supplierConnection.postMessage("captcha-solved");
                orginalCallback(res);
            }
        }
    }
    watchCaptchaChallenge();
    if (document.querySelector('.g-recaptcha')) {
        document.querySelector('.g-recaptcha').click();
    }

    if(document.querySelector('pre') && document.querySelector('pre').textContent.includes('g-recaptcha-response')) {
      window.supplierConnection.postMessage("finished");
    }

    return 0;
})();

              ''');
        },
      ),
    );
  }
}
