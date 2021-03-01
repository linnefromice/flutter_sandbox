import 'package:flutter/material.dart';

final Map<Alignment, Alignment> _reverseAlignment = {
  Alignment.topLeft: Alignment.bottomRight,
  Alignment.topCenter: Alignment.bottomCenter,
  Alignment.topRight: Alignment.bottomLeft,
  Alignment.centerLeft: Alignment.centerRight,
  Alignment.centerRight: Alignment.centerLeft,
  Alignment.bottomLeft: Alignment.topRight,
  Alignment.bottomCenter: Alignment.topCenter,
  Alignment.bottomRight: Alignment.topLeft,
};

class BicolorIcon extends StatelessWidget {
  BicolorIcon({
    @required this.iconData,
    @required this.iconSize,
    @required this.rate,
    @required this.beginAlignment,
    @required this.beginColor,
    @required this.endColor
  });
  final IconData iconData;
  final double iconSize;
  final double rate;
  final Alignment beginAlignment;
  final Color beginColor;
  final Color endColor;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        begin: beginAlignment,
        end: _reverseAlignment[beginAlignment],
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
