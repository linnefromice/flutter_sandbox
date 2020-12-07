import 'package:decorated_icon/decorated_icon.dart';
import 'package:flutter/material.dart';

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
            Text("LikeButtonScreen"),
          ],
        ),
      ),
    );
  }
}