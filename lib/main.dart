import 'package:flutter/material.dart';
import 'package:linnefromice/views/screens/im_animations_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Sandbox',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ImAnimationsScreen(),
    );
  }
}

