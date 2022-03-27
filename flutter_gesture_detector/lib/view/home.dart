import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GestureDetectorScreen extends StatefulWidget {
  const GestureDetectorScreen({Key? key}) : super(key: key);

  @override
  _GestureDetectorScreenState createState() => _GestureDetectorScreenState();
}

class _GestureDetectorScreenState extends State<GestureDetectorScreen> {
  Color color = Colors.blueGrey;
  Text text = const Text(
    "Hello! it's BlueGray Color",
    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
        title: const Text('Gesture Detector Ekran'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              color = Colors.pink;
              text = const Text(
                "Hello! it's Pink Color",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              );
            });
          },
          onDoubleTap: () {
            setState(() {
              color = Colors.blueAccent;
              text = const Text(
                "Hello! it's Blue Color",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              );
            });
          },
          onLongPress: () {
            setState(() {
              color = Colors.black;
              text = const Text(
                "Hello! it's Black Color",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              );
            });
          },
          child: Container(
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(20)),
              width: 250,
              height: 200,
              child: Center(
                child: text,
              )),
        ),
      ),
    );
  }
}
