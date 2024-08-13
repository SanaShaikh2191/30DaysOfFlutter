import 'package:flutter/material.dart';

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snackbar"),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
              onPressed: () {
                final snackBar = SnackBar(
                  action: SnackBarAction(
                      label: "Undo", textColor: Colors.red, onPressed: () {}),
                  duration: const Duration(seconds: 3),
                  content: Text("This is an error"),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  behavior: SnackBarBehavior.floating,
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: const Text("Show Snackbar")),
        ),
      ),
    );
  }
}
