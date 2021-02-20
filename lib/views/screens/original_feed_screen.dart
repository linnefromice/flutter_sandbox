import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:xml2json/xml2json.dart';
import 'package:http/http.dart' as http;

class FeedService {
  final _targetUrl = 'https://zenn.dev/topics/flutter/feed';

  Future<List> feed() async {
    final client = new http.Client();
    final transformer = Xml2Json();
    return await client.get(_targetUrl).then((response) {
      return utf8.decode(response.bodyBytes);
    }).then((bodyString) {
      transformer.parse(bodyString);
      final json = transformer.toGData();
      return jsonDecode(json)['rss']['channel']['item'];
    });
  }
}

class OriginalFeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
    );
  }
}