import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class WidgetDialog extends StatefulWidget {
  const WidgetDialog({super.key});

  @override
  State<WidgetDialog> createState() => _WidgetDialogState();
}

class _WidgetDialogState extends State<WidgetDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("CANCEL"))
                            ],
                            title: Text("Flutter Dialog"),
                            titlePadding: EdgeInsets.all(20.0),
                            content: Text("Cancel This Dialog"),
                          ));
                },
                child: Text("Show Dialog Botton")),
          ),
          ElevatedButton(
              onPressed: () {
                AwesomeDialog(
                  context: context,
                  dialogType: DialogType.success,
                  animType: AnimType.scale,
                  title: "Success",
                  desc: "This is a success message",
                  btnOkOnPress: () {
                    Navigator.pop(context);
                  },
                ).show();
              },
              child: Text("Awsome Dialog Botton"))
        ],
      ),
    );
  }
}
