import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:provider/provider.dart';
import './runner.dart';

class BrowserInstance extends StatelessWidget {
  const BrowserInstance(this.index, this.instanceAlignment);
  final Alignment instanceAlignment;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Consumer<Runner>(builder: (context, runner, child) {
      return Offstage(
        offstage: runner.activeInstanceIndex != -1 &&
            runner.activeInstanceIndex != index,
        child: Transform.scale(
          alignment: instanceAlignment,
          scale: runner.activeInstanceIndex == index ? 1 : 0.475,
          child: Stack(
            children: <Widget>[
              AbsorbPointer(
                absorbing: runner.activeInstanceIndex != index,
                child: WebView(
                  initialUrl: 'https://bot.sannysoft.com',
                  javascriptMode: JavascriptMode.unrestricted,
                  gestureNavigationEnabled: false,
                ),
              ),
              GestureDetector(
                onTap: () => runner.setActiveInstance(index),
              ),
            ],
          ),
        ),
      );
    });
  }
}
