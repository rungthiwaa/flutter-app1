import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//สร้างwidget
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello Flutter"),
        ),
        body: Center(
          child: Text(
            "Hi everyone",
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}
