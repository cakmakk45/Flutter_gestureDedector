import 'package:flutter/material.dart';
import 'package:flutter_gesture_detector/view/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gesture Detector',
      home: GestureDetectorScreen(),
      // home: MyHomePage(),
    );
  }
}
