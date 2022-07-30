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
            child: Image(
          image: NetworkImage(
              "https://external-preview.redd.it/wyDRIAmyLmDAswvwisGM2PIRtT68eTYidrcqGxK-JYk.jpg?auto=webp&s=31c81719ab260dd00e5125cef73b9a512bbc2839"),
        )),
      ),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}
