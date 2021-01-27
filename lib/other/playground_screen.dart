// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:supplier_mobile/components/browser_instance.dart';
// import 'package:supplier_mobile/components/navigation/navigation_bar.dart';
// import 'package:webview_flutter/webview_flutter.dart';
// import 'package:provider/provider.dart';
// import '../constants/colors.dart';
// import '../components/runner.dart';

// class PlaygroundScreen extends StatefulWidget {
//   static const String route = 'playground';

//   @override
//   _PlaygroundScreenState createState() => _PlaygroundScreenState();
// }

// class _PlaygroundScreenState extends State<PlaygroundScreen> {
//   @override
//   void initState() {
//     super.initState();
//     if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: const NavigationBar(),
//       body: SafeArea(
//         // ignore: always_specify_types
//         child: ChangeNotifierProvider(
//           create: (_) => Runner(),
//           child: Column(
//             children: [
//               Expanded(
//                 flex: 3,
//                 child: Container(
//                   color: kSecondaryBackground,
//                   padding: const EdgeInsets.all(20),
//                   child: Stack(children: [
//                     const BrowserInstance(0, Alignment.topLeft),
//                     // BrowserInstance(1, Alignment.topRight),
//                     // BrowserInstance(2, Alignment.bottomLeft),
//                     // BrowserInstance(3, Alignment.bottomRight)
//                   ]),
//                 ),
//               ),
//               Expanded(
//                 flex: 1,
//                 // ignore: avoid_unnecessary_containers
//                 child: Container(
//                   child: Consumer<Runner>(builder: (context, runner, child) {
//                     return Offstage(
//                       offstage: runner.activeInstanceIndex == -1,
//                       child: FlatButton(
//                         onPressed: () {
//                           runner.setActiveInstance(-1);
//                         },
//                         child: Container(
//                           padding: const EdgeInsets.symmetric(
//                               vertical: 15, horizontal: 30),
//                           decoration: const BoxDecoration(
//                             color: kVioletColor,
//                           ),
//                           child: const Text('Show all'),
//                         ),
//                       ),
//                     );
//                   }),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
