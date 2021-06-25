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
    {
      "label": "flutter_spinkit",
      "pathName": "/flutter_spinkit"
    },
    {
      "label": "flutter_animation_set",
      "pathName": "/flutter_animation_set"
    },
    {
      "label": "webview_flutter",
      "pathName": "/webview_flutter"
    },
    {
      "label": "webfeed",
      "pathName": "/web_feed"
    },
    {
      "label": "original_feed",
      "pathName": "/original_feed"
    },
    {
      "label": "bicolor_icon",
      "pathName": "/bicolor_icon"
    },
    {
      "label": "focus_text_field",
      "pathName": "/focus_text_field"
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