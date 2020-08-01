import 'package:flutter/material.dart';
import 'package:whats_up_doc/Screens/MainPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.black,
      debugShowCheckedModeBanner: false,
      title: 'WHATS UP DOC',
      home: MainPage(),
    );
  }
}