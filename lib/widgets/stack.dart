import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Widget"),
      ),
      body: Container(
        color: Colors.blue[100],
        child: Center(
          child: Stack(children: [
            Center(
              child: Container(
                color: Colors.amber,
                height: 350,
                width: 350,
              ),
            ),
            Center(
              child: Container(
                color: Colors.deepPurpleAccent,
                height: 250,
                width: 250,
              ),
            ),
            Center(
              child: Container(
                color: Colors.red,
                height: 150,
                width: 150,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
