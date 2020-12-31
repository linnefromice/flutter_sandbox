import 'package:flutter/material.dart';

class WebviewFlutterScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<WebviewFlutterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Center(
        child: Text("WebviewFlutterScreen"),
      ),
    );
  }
}