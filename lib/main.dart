import 'package:flutter/material.dart';
import 'package:whats_up_doc/Screens/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WHATS UP DOC',
      home: SplashScreen(),
    );
  }
}