import 'dart:html';
import 'ฺBingsuMenu.dart';
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
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
//กลุ่มข้อมูล
  List<BingsuMenu> menu = [
    BingsuMenu("Strawberry", "159", "assets/images/pic1.jpg"),
    BingsuMenu("Mango", "159", "assets/images/pic2.jpg"),
    BingsuMenu("Milk", "179", "assets/images/pic3.jpg"),
    BingsuMenu("Green Tea", "149", "assets/images/pic5.jpg"),
  ];
//แสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("เลือกเมนูบิงซู"),
        ),
        body: ListView.builder(
            itemCount: menu.length,
            itemBuilder: (BuildContext context, int index) {
              BingsuMenu bingsu = menu[index];
              return ListTile(
                leading: Image.asset(bingsu.img),
                title: Text(
                  bingsu.name,
                  style: TextStyle(fontSize: 30),
                ),
                subtitle: Text("ราคา" + bingsu.price + "บาท"),
                onTap: () {
                  print("คุณเลือกเมนูอาหารชื่อว่า = " + bingsu.name);
                },
              );
            }));
  }
}
