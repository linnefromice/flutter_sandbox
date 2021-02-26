import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:convert';
import 'package:xml2json/xml2json.dart';
import 'package:http/http.dart' as http;

/*
javascript
python
typescript
react
%E5%88%9D%E5%BF%83%E8%80%85
aws
go
flutter
docker
ios
rails
github
ruby
swift
android
php
nextjs
firebase
css
linux
nodejs
%E3%83%9D%E3%82%A8%E3%83%A0
git
unity
web
vue
rust
java
mac
laravel
zenn
vscode
dart
html
%E6%A9%9F%E6%A2%B0%E5%AD%A6%E7%BF%92
cpp
gcp
windows
kubernetes
githubactions
csharp
atcoder
%E7%AB%B6%E3%83%97%E3%83%AD
vim
test
mysql
xcode
kotlin
azure
nuxtjs
%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%9F%E3%83%B3%E3%82%B0
ubuntu
reactnative
%E7%AB%B6%E6%8A%80%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%9F%E3%83%B3%E3%82%B0
terraform
api
frontend
slack
markdown
firestore
*/

class FeedService {
  // final _targetUrl = 'https://zenn.dev/topics/flutter/feed';
  String _buildUrl(final String genre) => "https://zenn.dev/topics/$genre/feed";

  Future<List> feed(final String genre) async {
    final client = new http.Client();
    final transformer = Xml2Json();
    return await client.get(_buildUrl(genre)).then((response) {
      return utf8.decode(response.bodyBytes);
    }).then((bodyString) {
      transformer.parse(bodyString);
      final json = transformer.toGData();
      return jsonDecode(json)['rss']['channel']['item'];
    });
  }
}

class OriginalFeedScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<OriginalFeedScreen> {
  List _datas = [];

  @override
  void initState() {
    super.initState();
    _search("flutter");
  }

  void _search(final String genre) async {
    final result = await FeedService().feed(genre);
    setState(() {
      _datas = result;
    });
  }

  Widget _buildCard(dynamic item) {
    return Card(
      child: GestureDetector(
        onTap: () async {
          String url = item['link']['\$t'].toString();
          print(url);
          if (await canLaunch(url)) {
            await launch(url);
          } else {
            throw 'Could not launch $url';
          }
        },
        child: ListTile(
          title: Text(item['title']['__cdata'].toString()),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(item['dc\$creator']['\$t'].toString()),
              Text(item['pubDate']['\$t'].toString()),
              Text(item['description']['__cdata'].toString().replaceAll("\\n", "\n"))
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView.builder(
        itemCount: _datas.length,
        itemBuilder: (context, index) {
          return _buildCard(_datas[index]);
        },
      ),
    );
  }
}