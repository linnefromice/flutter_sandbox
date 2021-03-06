import 'package:flutter/material.dart';
import 'package:linnefromice/views/screens/animated_text_kit_screen.dart';
import 'package:linnefromice/views/screens/bicolor_icon_screen.dart';
import 'package:linnefromice/views/screens/decorated_icon_screen.dart';
import 'package:linnefromice/views/screens/flutter_animation_set_screen.dart';
import 'package:linnefromice/views/screens/flutter_spinkit_screen.dart';
import 'package:linnefromice/views/screens/focus_text_field_page.dart';
import 'package:linnefromice/views/screens/home_screen.dart';
import 'package:linnefromice/views/screens/im_animations_screen.dart';
import 'package:linnefromice/views/screens/like_button_screen.dart';
import 'package:linnefromice/views/screens/original_feed_screen.dart';
import 'package:linnefromice/views/screens/web_feed_screen.dart';
import 'package:linnefromice/views/screens/webview_flutter_screen.dart';

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
        '/like_button': (context) => LikeButtonScreen(),
        '/animated_text_kit': (context) => AnimatedTextKitScreen(),
        '/flutter_spinkit': (context) => FlutterSpinkitScreen(),
        '/flutter_animation_set': (context) => FlutterAnimationSetScreen(),
        '/webview_flutter': (context) => WebviewFlutterScreen(),
        '/web_feed': (context) => WebFeedScreen(),
        '/original_feed': (context) => OriginalFeedScreen(),
        '/bicolor_icon': (context) => BicolorIconScreen(),
        '/focus_text_field': (context) => FocusTextFieldPage(),
      },
    );
  }
}

