import 'package:flutter/material.dart';
import 'package:im_animations/im_animations.dart';

class ImAnimationsScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ImAnimationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Sonar(
                  radius: 100,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.pink,
                    size: 50,
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}