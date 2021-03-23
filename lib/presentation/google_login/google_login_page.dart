import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:supplier_mobile/application/cookies/cookies_cubit.dart';
import 'package:supplier_mobile/presentation/core/buttons/primary_button.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/constants/typography.dart';
import 'package:supplier_mobile/presentation/core/top_bar.dart';
import 'package:supplier_mobile/presentation/navigation/router.gr.dart';

class GoogleLoginPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final webViewController = useState<InAppWebViewController>(null);

    final _options = InAppWebViewGroupOptions(
      crossPlatform: InAppWebViewOptions(
        incognito: true,
        useShouldOverrideUrlLoading: true,
        mediaPlaybackRequiresUserGesture: false,
      ),
      android: AndroidInAppWebViewOptions(
        useHybridComposition: true,
      ),
      ios: IOSInAppWebViewOptions(
        allowsInlineMediaPlayback: true,
      ),
    );

    Future<void> _saveCookies() async {
      final cookies =
          await webViewController.value.ios.cookieHandler.ios.getAllCookies();
      context.read<CookiesCubit>().setGoogleCookies(cookies);
      ExtendedNavigator.of(context).replace(Routes.tasksPage);
    }

    Future<void> _messagesHandler(List<dynamic> messages) async {
      try {
        final email = messages.first as String;
        context.read<CookiesCubit>().setGoogleAccount(email);
        _saveCookies();
      } catch (ex) {
        print(ex.toString());
      }
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: TopBar(
          content: Text(
        'Google Login',
        style: kHeader,
      )),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: InAppWebView(
                initialOptions: _options,
                onWebViewCreated: (controller) async {
                  webViewController.value = controller;
                  webViewController.value.addJavaScriptHandler(
                    handlerName: 'supplierConnection',
                    callback: _messagesHandler,
                  );
                  webViewController.value.clearCache();
                  final cookies =
                      context.read<CookiesCubit>().state.getGoogleCookies();

                  if (cookies.isNotEmpty) {
                    for (final cookie in cookies) {
                      webViewController.value.ios.cookieHandler.setCookie(
                        url: Uri(host: cookie.domain),
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

                  webViewController.value.loadUrl(
                      urlRequest: URLRequest(
                    url: Uri.parse(
                        'https://accounts.google.com/signin/v2/identifier?flowName=GlifWebSignIn&flowEntry=ServiceLogin&hl=en'),
                  ));
                },
                onLoadStart:
                    (InAppWebViewController controller, Uri url) async {
                  if (!Platform.isAndroid) return;
                  final stealthJs = await rootBundle
                      .loadString('assets/javascript/stealth.min.js');
                  controller.evaluateJavascript(source: stealthJs);
                },
                onLoadStop: (InAppWebViewController controller, Uri url) async {
                  if (!url
                      .toString()
                      .contains('https://myaccount.google.com/')) {
                    return;
                  }
                  final source = await rootBundle
                      .loadString('assets/javascript/googleLogin.js');
                  controller.evaluateJavascript(source: source);
                },
                androidOnPermissionRequest:
                    (controller, origin, resources) async {
                  return PermissionRequestResponse(
                    resources: resources,
                    action: PermissionRequestResponseAction.GRANT,
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  PrimaryButton(
                    text: 'Close',
                    width: 120,
                    height: 45,
                    onTap: _saveCookies,
                  ),
                  SizedBox(width: 20),
                  const Flexible(
                    child: Text(
                      'Enter your account details. All data is secure and stored only on your phone.',
                      style: TextStyle(color: kLightPurple),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
