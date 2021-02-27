import 'package:flutter/material.dart';

class BicolorIcon extends StatelessWidget {
  BicolorIcon({
    this.iconData,
    this.iconSize,
    this.rate,
    this.beginAlignment,
    this.endAlignment,
    this.beginColor,
    this.endColor
  });
  final IconData iconData;
  final double iconSize;
  final double rate;
  final Alignment beginAlignment;
  final Alignment endAlignment;
  final Color beginColor;
  final Color endColor;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        begin: beginAlignment,
        end: endAlignment,
        colors: [beginColor, endColor],
        stops: [rate, rate],
        tileMode: TileMode.mirror,
      ).createShader(bounds),
      child: Container(
        child: Center(
          child: Icon(
            iconData,
            size: iconSize,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
