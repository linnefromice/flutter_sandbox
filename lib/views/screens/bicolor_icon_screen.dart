import 'package:flutter/material.dart';
import 'package:linnefromice/views/components/bicolor_icon.dart';

class BicolorIconScreen extends StatelessWidget {
  Widget _buildFavorites() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BicolorIcon(iconData: Icons.favorite, iconSize: 50, rate: 0.3, beginAlignment: Alignment.centerLeft, beginColor: Colors.pink, endColor: Colors.white),
        BicolorIcon(iconData: Icons.favorite, iconSize: 50, rate: 0.5, beginAlignment: Alignment.centerLeft, beginColor: Colors.pink, endColor: Colors.white),
        BicolorIcon(iconData: Icons.favorite, iconSize: 50, rate: 0.7, beginAlignment: Alignment.centerLeft, beginColor: Colors.pink, endColor: Colors.white),
      ],
    );
  }

  Widget _buildStars() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BicolorIcon(iconData: Icons.star, iconSize: 50, rate: 0.2, beginAlignment: Alignment.bottomCenter, beginColor: Colors.yellow, endColor: Colors.white),
        BicolorIcon(iconData: Icons.star, iconSize: 50, rate: 0.5, beginAlignment: Alignment.bottomCenter, beginColor: Colors.yellow, endColor: Colors.white),
        BicolorIcon(iconData: Icons.star, iconSize: 50, rate: 0.8, beginAlignment: Alignment.bottomCenter, beginColor: Colors.yellow, endColor: Colors.white),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            child: _buildFavorites()
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: _buildStars()
          ),
        ],
      )
    );
  }
}