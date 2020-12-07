import 'package:flutter/material.dart';
import 'package:linnefromice/views/screens/im_animations_screen.dart';

class HomeScreen extends StatelessWidget {
  var navigateCards = [
    {
      "label": "im_animations",
      "screen": ImAnimationsScreen(),
      "pathName": "/im_animations"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: navigateCards.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: ListTile(
              leading: Icon(Icons.flight_land),
              title: Text("${navigateCards[index]["label"]}"),
              onTap: () => Navigator.pushNamed(context, navigateCards[index]["pathName"]),
            ),
          );
        },
      ),
    );
  }
}