import 'package:first_app/Pages/Home.dart';
import 'package:flutter/material.dart';
import 'Pages/Home.dart';
void main() {
  // to watch posision of every ui elment
  //debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.deepOrange,
          accentColor: Colors.deepPurple),
      home:HomePage()
    );
  }
}
