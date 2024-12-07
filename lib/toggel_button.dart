import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class ToggelButton extends StatefulWidget {
  const ToggelButton({super.key});

  @override
  State<ToggelButton> createState() => _ToggelButtonState();
}

class _ToggelButtonState extends State<ToggelButton> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: FlutterSwitch(
                value: status,
                width: 100,
                height: 50,
                valueFontSize: 20,
                toggleSize: 40,
                borderRadius: 50,
                padding: 8.0,
                showOnOff: true,
                onToggle: (val) {
                  setState(() {
                    status = val;
                  });
                }),
          )
        ],
      ),
    );
  }
}
