import 'package:decorated_icon/decorated_icon.dart';
import 'package:flutter/material.dart';

class DecoratedIconScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<DecoratedIconScreen> with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2)
    );
    animation = Tween<double>(begin: 0, end: 6.0).animate(_animationController)
      ..addListener(() {
        setState(() {});
      });
    _animationController.repeat(reverse: true);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DecoratedIcon(
              Icons.favorite,
              color: Colors.pink,
              size: 50,
              shadows: [
                BoxShadow(
                  blurRadius: 12.0,
                  color: Colors.blue,
                ),
              ],
            ),
            DecoratedIcon(
              Icons.favorite,
              color: Colors.pink,
              size: 50,
              shadows: [
                BoxShadow(
                  blurRadius: 6.0,
                  color: Colors.pink[300],
                ),
                BoxShadow(
                  blurRadius: 6.0,
                  color: Colors.pink[200],
                  offset: Offset(3.0, 3.0)
                ),
              ],
            ),
            DecoratedIcon(
              Icons.android,
              color: Colors.purple,
              size: 60.0,
              shadows: [
                BoxShadow(
                  blurRadius: 42.0,
                  color: Colors.purpleAccent,
                ),
                BoxShadow(
                  blurRadius: 12.0,
                  color: Colors.white,
                ),
              ],
            ),
            Text("+ animation"),
            DecoratedIcon(
              Icons.favorite,
              color: Colors.pink,
              size: 50,
              shadows: [
                BoxShadow(
                  blurRadius: animation.value,
                  color: Colors.pink[300],
                ),
                BoxShadow(
                  blurRadius: animation.value,
                  color: Colors.pink[200],
                  offset: Offset(3.0, 3.0)
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}