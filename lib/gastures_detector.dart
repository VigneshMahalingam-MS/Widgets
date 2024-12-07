import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class WidgetGestureDetector extends StatefulWidget {
  const WidgetGestureDetector({super.key});

  @override
  State<WidgetGestureDetector> createState() => _WidgetGestureDetectorState();
}

class _WidgetGestureDetectorState extends State<WidgetGestureDetector> {
  int numberoftimetapped = 0;

  void _increasenumber() {
    setState(() {
      numberoftimetapped++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Tapped  " + numberoftimetapped.toString() + "  Times",
            style: TextStyle(fontSize: 20),),
            GestureDetector(
              onTap: _increasenumber,
              child: Container(
                
                color: Colors.green,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Tap Here"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
