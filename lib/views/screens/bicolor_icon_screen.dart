import 'package:flutter/material.dart';
import 'package:linnefromice/views/components/bicolor_icon.dart';

class BicolorIconScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            child: BicolorIcon(
              iconData: Icons.favorite,
              iconSize: 50,
              rate: 0.25,
              beginAlignment: Alignment.topCenter,
              endAlignment: Alignment.bottomCenter,
              beginColor: Colors.red,
              endColor: Colors.blue,
            )
          )
        ],
      )
    );
  }
}