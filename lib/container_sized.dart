import 'package:flutter/material.dart';

class ContainerSizedBox extends StatelessWidget {
  const ContainerSizedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Container and SizedBox",
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,

          // padding: const EdgeInsets.all(30),
          decoration: const BoxDecoration(
              color: Colors.deepPurple,
              //     border: Border.all(),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              boxShadow: [BoxShadow(blurRadius: 20, spreadRadius: 5)]),
          child: const Center(
              child: Text(
            "Hello World",
            style: TextStyle(color: Colors.white),
          )),
        ),
      ),
    );
  }
}
