import 'package:flutter/material.dart';

class FocusTextFieldPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<FocusTextFieldPage> {
  FocusNode focusNode;

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FocusTextFieldPage"),
      ),
      body: Center(
        child: TextField(
          focusNode: focusNode,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => focusNode.requestFocus(),
      ),
    );
  }
}
