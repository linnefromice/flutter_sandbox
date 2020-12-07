import 'package:decorated_icon/decorated_icon.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class LikeButtonScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<LikeButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LikeButton(),
            LikeButton(
              size: 50,
              circleColor: CircleColor(
                start: Colors.pink[200],
                end: Colors.pink[300]
              ),
              bubblesColor: BubblesColor(
                dotPrimaryColor: Colors.pink[300],
                dotSecondaryColor: Colors.pink[200],
              ),
            )
          ],
        ),
      ),
    );
  }
}