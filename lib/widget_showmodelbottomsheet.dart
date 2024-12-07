import 'package:drawer_demo/gastures_detector.dart';
import 'package:drawer_demo/rich_text.dart';
import 'package:flutter/material.dart';

class WidgetShowmodelbottomsheet extends StatefulWidget {
  const WidgetShowmodelbottomsheet({super.key});

  @override
  State<WidgetShowmodelbottomsheet> createState() =>
      _WidgetShowmodelbottomsheetState();
}

class _WidgetShowmodelbottomsheetState
    extends State<WidgetShowmodelbottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 200,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadiusDirectional.circular(20),
                              color: Colors.tealAccent),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("Model Buttomsheet"),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("Close Bottomsheet"))
                              ],
                            ),
                          ),
                        );
                      });
                },
                child: Text("showModelbottomsheet")),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WidgetRichText()));
              },
              child: Text("RichText")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => WidgetGestureDetector()));
              },
              child: Text("Gastures Detector")),
              
              
        ],
      ),
    );
  }
}
