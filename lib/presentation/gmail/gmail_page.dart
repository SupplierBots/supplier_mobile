import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:supplier_mobile/application/cookies/cookies_cubit.dart';
import 'package:supplier_mobile/presentation/core/buttons/primary_button.dart';
import 'package:supplier_mobile/presentation/core/constants/typography.dart';
import 'package:supplier_mobile/presentation/core/top_bar.dart';
import 'package:supplier_mobile/presentation/navigation/router.gr.dart';

class GmailPage extends HookWidget {
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

    Future<void> _messagesHandler(List<dynamic> messages) async {}

    Future<void> _saveCookies() async {
      final cookies =
          await webViewController.value.ios.cookieHandler.ios.getAllCookies();
      print(cookies);
      context.read<CookiesCubit>().setGmailCookies(cookies);
      ExtendedNavigator.of(context).replace(Routes.tasksPage);
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: TopBar(
          content: Text(
        'Gmail login',
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
                      context.read<CookiesCubit>().state.getGmailCookies();

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
                    url: Uri.parse('https://accounts.google.com/login'),
                  ));
                },
                onLoadStart:
                    (InAppWebViewController controller, Uri url) async {
                  if (!Platform.isAndroid) return;
                  final stealthJs = await rootBundle
                      .loadString('assets/javascript/stealth.min.js');
                  controller.evaluateJavascript(source: stealthJs);
                },
                onLoadStop:
                    (InAppWebViewController controller, Uri url) async {},
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
              child: PrimaryButton(
                text: 'Close',
                width: 160,
                height: 45,
                onTap: _saveCookies,
              ),
            )
          ],
        ),
      ),
    );
  }
}
