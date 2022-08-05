import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ResourcePage extends StatelessWidget {
  ResourcePage({
    Key? key,
    required this.title,
    required this.suggestion,
    required this.detail,
    required this.link,
  }) : super(key: key);

  late String title;
  late String suggestion;
  late String detail;
  late String link;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Card(
            child: SizedBox(
              height: 500,
              width: 2000,
              child: Column(
                children: buildContent(suggestion, detail, link),
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> buildContent(String suggestion, String details, String link) {
    return [
      Text(
        suggestion,
        style: const TextStyle(fontSize: 50),
      ),
      const Spacer(),
      Text(
        details,
        style: const TextStyle(fontSize: 40),
      ),
      const Spacer(),
      InkWell(
        //ERROR the link launcher does not work
        onTap: () => launchUrl(Uri.parse(link)),
        child: const Text(
          "Click this link to learn more!",
          style: TextStyle(fontSize: 30),
        ),
      ),
    ];
  }
}
