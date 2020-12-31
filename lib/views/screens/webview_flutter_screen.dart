import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewFlutterScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<WebviewFlutterScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: WebView(
        initialUrl: 'https://beam-webfront-pd0uh0ct8.vercel.app/',
        javascriptMode: JavascriptMode.unrestricted,
      )
    );
  }
}
