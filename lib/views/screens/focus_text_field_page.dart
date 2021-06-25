import 'package:flutter/material.dart';

class FocusTextFieldPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<FocusTextFieldPage> {
  TextEditingController textEditingController;
  FocusNode focusNode;
  bool isFocused = true;

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController.fromValue(TextEditingValue(text: "Focused!!!"));
    focusNode = FocusNode();
    focusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    focusNode.removeListener(_onFocusChange);
    focusNode.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    debugPrint("Focus: " + focusNode.hasFocus.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FocusTextFieldPage"),
      ),
      body: Center(
        child: Focus(
          focusNode: focusNode,
          onFocusChange: (focused) {
            setState(() {
              isFocused = focused;
            });
          },
          child: Container(
            width: 300,
            height: 300,
            color: Colors.tealAccent,
            child: Center(
              child: isFocused
                ? TextField(controller: textEditingController)
                : Text("Not focused..."),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => isFocused ? focusNode.unfocus() : focusNode.requestFocus()
      ),
    );
  }
}
