import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final navigateCards = [
    {
      "label": "im_animations",
      "pathName": "/im_animations"
    },
    {
      "label": "decorated_icon",
      "pathName": "/decorated_icon"
    },
    {
      "label": "like_button",
      "pathName": "/like_button"
    },
    {
      "label": "animated_text_kit",
      "pathName": "/animated_text_kit"
    },
  ];

  Widget _buildNavigationWidget(
      BuildContext context,
      final String label,
      final String pathName
    ) {
    return Container(
      child: ListTile(
        leading: Icon(Icons.flight_land),
        title: Text("$label"),
        onTap: () => Navigator.pushNamed(context, pathName),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: navigateCards.length,
        itemBuilder: (BuildContext context, int index) {
          return _buildNavigationWidget(context, navigateCards[index]["label"], navigateCards[index]["pathName"]);
        },
      ),
    );
  }
}