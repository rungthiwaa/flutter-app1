import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    title: "My App",
    home: Scaffold(
      appBar: AppBar(
        title: Text("Hello Flutter"),
      ),
      body: Text("็Hi everyone"),
    ),
    theme: ThemeData(primarySwatch: Colors.pink),
  );
  runApp(app);
}
