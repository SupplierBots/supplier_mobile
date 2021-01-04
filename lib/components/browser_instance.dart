import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BrowserInstance extends StatefulWidget {
  const BrowserInstance(this.instanceAlignment);
  final Alignment instanceAlignment;
  @override
  _BrowserInstanceState createState() => _BrowserInstanceState();
}

class _BrowserInstanceState extends State<BrowserInstance> {
  bool isFullscreened = false;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      alignment: widget.instanceAlignment,
      scale: isFullscreened ? 1 : 0.475,
      child: Stack(
        children: <Widget>[
          AbsorbPointer(
            absorbing: !isFullscreened,
            child: WebView(
              initialUrl: 'https://bot.sannysoft.com',
              javascriptMode: JavascriptMode.unrestricted,
              gestureNavigationEnabled: false,
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isFullscreened = true;
              });
            },
          ),
        ],
      ),
    );
  }
}
