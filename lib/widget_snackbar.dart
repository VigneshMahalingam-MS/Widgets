import 'package:flutter/material.dart';

class WidgetSnackbar extends StatefulWidget {
  const WidgetSnackbar({super.key});

  @override
  State<WidgetSnackbar> createState() => _WidgetSnackbarState();
}

class _WidgetSnackbarState extends State<WidgetSnackbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
             final snackBar = SnackBar(
              backgroundColor: Colors.blue,
                    content: const Text("Yay! A Snackbar"),
                    action: SnackBarAction(label: 'undo',textColor: Colors.black,
                     onPressed: () {}),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: const Text("Show Snackbar")),
                
          ),
          
          
        ],
        
      ),
    );
  }
}
