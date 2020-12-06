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
              SonarWidget(),
              SizedBox(height: 25),
              ColorSonarWidget()
            ],
          ),
        )
      ),
    );
  }
}

class HeartIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.favorite,
      color: Colors.pink,
      size: 50,
    );
  }
}

class SonarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Sonar(
        waveColor: Colors.pink,
        radius: 75,
        child: HeartIcon()
      ),
    );
  }
}

class ColorSonarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ColorSonar(
        contentAreaRadius: 15,
        waveMotionEffect: Curves.easeInOut,
        wavesDisabled: false,
        innerWaveColor: Colors.pink[200],
        middleWaveColor: Colors.pink[100],
        outerWaveColor: Colors.pink[50],
        child: HeartIcon()
      ),
    );
  }
}