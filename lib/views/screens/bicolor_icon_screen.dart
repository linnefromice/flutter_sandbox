import 'dart:math';

import 'package:flutter/material.dart';
import 'package:linnefromice/views/components/bicolor_icon.dart';

class BicolorIconScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<BicolorIconScreen> {
  double _currentSliderValue = 50;

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

  Widget _buildRatedFavorites() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) =>
        BicolorIcon(
          iconData: Icons.favorite,
          iconSize: 50,
          rate: min(1, max(0, (_currentSliderValue - index * 20) / 20)),
          beginAlignment: Alignment.centerLeft,
          beginColor: Colors.pink,
          endColor: Colors.white
        )
      ),
    );
  }


  Widget _buildSlider() {
    return Slider(
      value: _currentSliderValue,
      min: 0,
      max: 100,
      divisions: 100,
      label: _currentSliderValue.round().toString(),
      onChanged: (double value) {
        setState(() {
          _currentSliderValue = value;
        });
      },
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
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            child: _buildRatedFavorites()
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            child: _buildSlider()
          ),
        ],
      )
    );
  }
}