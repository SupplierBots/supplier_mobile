import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:provider/provider.dart';
import 'home_screen.dart';
import '../constants.dart';
import '../components/browser_instance.dart';
import '../components/runner.dart';

class PlaygroundScreen extends StatefulWidget {
  static const String route = "playground";

  @override
  _PlaygroundScreenState createState() => _PlaygroundScreenState();
}

class _PlaygroundScreenState extends State<PlaygroundScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ChangeNotifierProvider(
          create: (_) => Runner(),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  color: kSecondaryBackground,
                  padding: EdgeInsets.all(20),
                  child: Stack(children: [
                    BrowserInstance(0, Alignment.topLeft),
                    BrowserInstance(1, Alignment.topRight),
                    BrowserInstance(2, Alignment.bottomLeft),
                    BrowserInstance(3, Alignment.bottomRight)
                  ]),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: Consumer<Runner>(builder: (context, runner, child) {
                    return Offstage(
                      offstage: runner.activeInstanceIndex == -1,
                      child: FlatButton(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 30),
                          decoration: BoxDecoration(
                            color: kVioletColor,
                          ),
                          child: Text("Show all"),
                        ),
                        onPressed: () {
                          runner.setActiveInstance(-1);
                        },
                      ),
                    );
                  }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
