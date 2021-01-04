import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'home_screen.dart';
import '../constants.dart';
import '../components/browser_instance.dart';

class PlaygroundScreen extends StatefulWidget {
  static const String route = "playground";

  @override
  _PlaygroundScreenState createState() => _PlaygroundScreenState();
}

class _PlaygroundScreenState extends State<PlaygroundScreen> {
  bool isActive = false;
  BrowserInstance fullscreenedInstance;
  @override
  Widget build(BuildContext context) {
    void setFullscreenedInstance(BrowserInstance instance) {
      setState(() {
        fullscreenedInstance = instance;
      });
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Container(
          color: kSecondaryBackground,
          width: 700,
          height: 550,
          child: Stack(
            children: [
              BrowserInstance(Alignment.topLeft),
              BrowserInstance(Alignment.topRight),
              BrowserInstance(Alignment.bottomLeft),
              BrowserInstance(Alignment.bottomRight),
            ],
          ),
        ),
      ),
    );
  }
}
