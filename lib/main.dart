import 'package:flutter/material.dart';
import 'package:post_intl/form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'International Student Solution',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(
          title: "What do you plan to do after you time at UF?"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 2;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: width,
              height: height,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 222, 104, 14),
                ),
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) =>
                        FormPage(status: "Stay"),
                  ),
                ),
                child: const Text(
                  "Stay",
                  style: TextStyle(fontSize: 150),
                ),
              ),
            ),
            SizedBox(
              width: width,
              height: height,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 22, 112, 222),
                ),
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) =>
                        FormPage(status: "Leave"),
                  ),
                ),
                child: const Text(
                  "Leave",
                  style: TextStyle(fontSize: 150),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
