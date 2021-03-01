import 'package:flutter/material.dart';
import 'package:linnefromice/views/components/bicolor_icon.dart';

class BicolorIconScreen extends StatelessWidget {
  Widget _buildFavorites() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BicolorIcon(iconData: Icons.favorite, iconSize: 40, rate: 0.3, beginAlignment: Alignment.centerLeft, beginColor: Colors.pink, endColor: Colors.white),
        BicolorIcon(iconData: Icons.favorite, iconSize: 50, rate: 0.5, beginAlignment: Alignment.centerLeft, beginColor: Colors.pink, endColor: Colors.white),
        BicolorIcon(iconData: Icons.favorite, iconSize: 60, rate: 0.7, beginAlignment: Alignment.centerLeft, beginColor: Colors.pink, endColor: Colors.white),
      ],
    );
  }

  Widget _buildStars() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BicolorIcon(iconData: Icons.star, iconSize: 20, rate: 0.2, beginAlignment: Alignment.bottomCenter, beginColor: Colors.yellow, endColor: Colors.white),
        BicolorIcon(iconData: Icons.star, iconSize: 30, rate: 0.5, beginAlignment: Alignment.bottomCenter, beginColor: Colors.yellow, endColor: Colors.white),
        BicolorIcon(iconData: Icons.star, iconSize: 40, rate: 0.8, beginAlignment: Alignment.bottomCenter, beginColor: Colors.yellow, endColor: Colors.white),
      ],
    );
  }

  Widget _buildCreditCards() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BicolorIcon(iconData: Icons.credit_card, iconSize: 90, rate: 0.2, beginAlignment: Alignment.topLeft, beginColor: Colors.green, endColor: Colors.blue),
        BicolorIcon(iconData: Icons.credit_card, iconSize: 120, rate: 0.5, beginAlignment: Alignment.topLeft, beginColor: Colors.green, endColor: Colors.blue),
        BicolorIcon(iconData: Icons.credit_card, iconSize: 150, rate: 0.8, beginAlignment: Alignment.topLeft, beginColor: Colors.green, endColor: Colors.blue),
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
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            child: _buildCreditCards()
          ),
        ],
      )
    );
  }
}