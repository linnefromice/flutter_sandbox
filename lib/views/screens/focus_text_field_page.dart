import 'package:flutter/material.dart';

class FocusTextFieldPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<FocusTextFieldPage> {
  TextEditingController _textEditingController;
  FocusNode _focusNode;
  bool _isFocused = true;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController.fromValue(TextEditingValue(text: "Focused!!!"));
    _focusNode = FocusNode();
    _focusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    debugPrint("Focus: " + _focusNode.hasFocus.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FocusTextFieldPage"),
      ),
      body: Center(
        child: Focus(
          focusNode: _focusNode,
          onFocusChange: (focused) {
            setState(() {
              _isFocused = focused;
            });
          },
          child: Container(
            width: 300,
            height: 300,
            color: Colors.tealAccent,
            child: Center(
              child: _isFocused
                ? TextField(controller: _textEditingController)
                : Text("Not focused..."),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _isFocused ? _focusNode.unfocus() : _focusNode.requestFocus()
      ),
    );
  }
}
