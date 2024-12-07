import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class WidgetRichText extends StatefulWidget {
  const WidgetRichText({super.key});

  @override
  State<WidgetRichText> createState() => _WidgetRichTextState();
}

class _WidgetRichTextState extends State<WidgetRichText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: RichText(
              text: TextSpan(
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.black
                ),
                children: <TextSpan>[
                  const TextSpan(
                    text: "Hello "
                  ),
                  TextSpan(
                      text: 'bold',
                      style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),
                      recognizer: TapGestureRecognizer()..onTap = () {}),
                  const TextSpan(text: ' world!'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
