import 'package:decorated_icon/decorated_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:like_button/like_button.dart';

class FlutterSpinkitScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<FlutterSpinkitScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SpinKitPumpingHeart(
              itemBuilder: (BuildContext context, int index) {
                return Icon(
                  Icons.favorite,
                  size: 50,
                  color: Colors.pink,
                );
              },
            ),
            SizedBox(height: 20),
            SpinKitCircle(
              itemBuilder: (BuildContext context, int index) {
                return Icon(
                  Icons.favorite,
                  size: 50,
                  color: Colors.pink,
                );
              }
            ),
            SizedBox(height: 20),
            SpinKitRipple(
              itemBuilder: (BuildContext context, int index) {
                return Icon(
                  Icons.favorite,
                  size: 50,
                  color: Colors.pink,
                );
              }
            ),
            SizedBox(height: 20),
            SpinKitRotatingPlain(
              itemBuilder: (BuildContext context, int index) {
                return Icon(
                  Icons.favorite,
                  size: 50,
                  color: Colors.pink,
                );
              }
            )
          ],
        ),
      ),
    );
  }
}