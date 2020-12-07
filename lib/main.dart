import 'package:flutter/material.dart';
import 'package:linnefromice/views/screens/decorated_icon_screen.dart';
import 'package:linnefromice/views/screens/home_screen.dart';
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
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/im_animations': (context) => ImAnimationsScreen(),
        '/decorated_icon': (context) => DecoratedIconScreen(),
      },
    );
  }
}

