// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';
// import 'package:flutter/services.dart' show rootBundle;
// import './runner.dart';

// class BrowserInstance extends StatefulWidget {
//   const BrowserInstance(this.index, this.instanceAlignment);
//   final Alignment instanceAlignment;
//   final int index;

//   @override
//   _BrowserInstanceState createState() => _BrowserInstanceState();
// }

// class _BrowserInstanceState extends State<BrowserInstance> {
//   WebViewController _webviewController;
//   static const String initialUrl =
//       'https://www.supremenewyork.com/mobile/#categories/new';

//   @override
//   Widget build(BuildContext context) {
//     return Offstage(
//       offstage: runner.activeInstanceIndex != -1 &&
//           runner.activeInstanceIndex != widget.index,
//       child: Transform.scale(
//         alignment: widget.instanceAlignment,
//         scale: runner.activeInstanceIndex == widget.index ? 1 : 0.475,
//         child: Stack(
//           children: <Widget>[
//             AbsorbPointer(
//               absorbing: runner.activeInstanceIndex != widget.index,
//               child: WebView(
//                 initialUrl: initialUrl,
//                 javascriptMode: JavascriptMode.unrestricted,
//                 gestureNavigationEnabled: true,
//                 onWebViewCreated: (controller) {
//                   _webviewController = controller;
//                 },
//                 onPageFinished: (url) async {
//                   if (url != initialUrl) return;
//                   String source = await rootBundle
//                       .loadString('assets/javascript/supremeInject.js');
//                   try {
//                     _webviewController.evaluateJavascript(source);
//                   } catch (ex) {
//                     print(ex);
//                   }
//                 },
//               ),
//             ),
//             IgnorePointer(
//               ignoring: runner.activeInstanceIndex == widget.index,
//               child: GestureDetector(
//                 onTap: () => runner.setActiveInstance(widget.index),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
