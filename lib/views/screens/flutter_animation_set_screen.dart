import 'package:decorated_icon/decorated_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_set/widget/behavior_animations.dart';
import 'package:like_button/like_button.dart';

class FlutterAnimationSetScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<FlutterAnimationSetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("[Caution] Don't display"),
            YYLove(),
            YYSingleLike()
          ],
        ),
      ),
    );
  }
}