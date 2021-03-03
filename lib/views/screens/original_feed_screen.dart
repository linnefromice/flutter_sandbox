import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:convert';
import 'package:xml2json/xml2json.dart';
import 'package:http/http.dart' as http;

final List<String> genres = [
  "javascript",
  "python",
  "typescript",
  "react",
  "競プロ",
  "aws",
  "go",
  "flutter",
  "docker",
  "ios",
  "rails",
  "github",
  "ruby",
  "swift",
  "android",
  "php",
  "nextjs",
  "firebase",
  "css",
  "linux",
  "nodejs",
  "ポエム",
  "git",
  "unity",
  "web",
  "vue",
  "rust",
  "java",
  "mac",
  "laravel",
  "zenn",
  "vscode",
  "dart",
  "html",
  "機械学習",
  "cpp",
  "gcp",
  "windows",
  "kubernetes",
  "githubactions",
  "csharp",
  "atcoder",
  "個人開発",
  "vim",
  "test",
  "mysql",
  "xcode",
  "kotlin",
  "azure",
  "nuxtjs",
  "プログラミング",
  "ubuntu",
  "reactnative",
  "競技プログラミング",
  "terraform",
  "api",
  "frontend",
  "slack",
  "markdown",
  "firestore",
];

class Feed {
  final String title;
  final String authorName;
  final String pubDate;
  final String description;
  final String link;

  Feed({this.title, this.authorName, this.pubDate, this.description, this.link});

  factory Feed.fromJson(Map<String, dynamic> json) {
    return Feed(
      title: json['title']['__cdata'],
      authorName: json['dc\$creator']['\$t'],
      pubDate: json['pubDate']['\$t'],
      description: json['description']['__cdata'].replaceAll("\\n", "\n"),
      link: json['link']['\$t']
    );
  }
}

class FeedService {
  // final _targetUrl = 'https://zenn.dev/topics/flutter/feed';
  String _buildUrl(final String genre) => "https://zenn.dev/topics/$genre/feed";

  Future<List<Feed>> feed(final String genre) async {
    final client = new http.Client();
    final transformer = Xml2Json();
    return await client.get(_buildUrl(genre)).then((response) {
      return utf8.decode(response.bodyBytes);
    }).then((bodyString) {
      transformer.parse(bodyString);
      final json = transformer.toGData();
      final List<dynamic> list = jsonDecode(json)['rss']['channel']['item'];
      return list.map((json) => Feed.fromJson(json)).toList();
    });
  }
}

class OriginalFeedScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<OriginalFeedScreen> {
  List<Feed> _datas = [];
  String dropdownValue = 'flutter';

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

  Widget _buildCard(final Feed feed) {
    return Card(
      child: GestureDetector(
        onTap: () async {
          String url = feed.link;
          print(url);
          if (await canLaunch(url)) {
            await launch(url);
          } else {
            throw 'Could not launch $url';
          }
        },
        child: ListTile(
          title: Text(feed.title),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(feed.authorName),
              Text(feed.pubDate),
              Text(feed.description)
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
      body: Column(
        children: [
          Center(
            child: DropdownButton<String>(
              value: dropdownValue,
              icon: Icon(Icons.arrow_downward),
              onChanged: (String newValue) {
                _search(newValue);
                setState(() => dropdownValue = newValue);
              },
              items: genres.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _datas.length,
              itemBuilder: (context, index) => _buildCard(_datas[index]),
            ),
          ),
        ],
      ),
    );
  }
}