import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:decorated_icon/decorated_icon.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class AnimatedTextKitScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<AnimatedTextKitScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Fade / Scale"),
            AnimatedTextKit(
              animatedTexts: [
                FadeAnimatedText(
                  'Fade First',
                  textStyle: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
                ),
                ScaleAnimatedText(
                  'Then Scale',
                  textStyle: TextStyle(fontSize: 70.0, fontFamily: 'Canterbury'),
                ),
              ],
            ),
            Text("Rotate"),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(width: 20.0, height: 100.0),
                Text(
                  "Be",
                  style: TextStyle(fontSize: 43.0),
                ),
                SizedBox(width: 20.0, height: 100.0),
                RotateAnimatedTextKit(
                    onTap: () {
                      print("Tap Event");
                    },
                    text: ["AWESOME", "OPTIMISTIC", "DIFFERENT"],
                    textStyle: TextStyle(fontSize: 40.0, fontFamily: "Horizon"),
                    textAlign: TextAlign.start
                ),
              ],
            ),
            Text("Typer"),
            SizedBox(
              width: 250.0,
              child: TyperAnimatedTextKit(
                onTap: () {
                  print("Tap Event");
                },
                text: [
                  "It is not enough to do your best,",
                  "you must know what to do,",
                  "and then do your best",
                  "- W.Edwards Deming",
                ],
                textStyle: TextStyle(
                    fontSize: 30.0,
                    fontFamily: "Bobbers"
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Text("Typewriter"),
            SizedBox(
              width: 200.0,
              child: TypewriterAnimatedTextKit(
                onTap: () {
                  print("Tap Event");
                },
                text: [
                  "Discipline is the best tool",
                  "Design first, then code",
                  "Do not patch bugs out, rewrite them",
                  "Do not test bugs out, design them out",
                ],
                textStyle: TextStyle(
                  fontSize: 30.0,
                  fontFamily: "Agne"
                ),
                textAlign: TextAlign.start,
              ),
            )
          ],
        ),
      ),
    );
  }
}