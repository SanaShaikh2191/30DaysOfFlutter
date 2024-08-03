import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("Button"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: const ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                  backgroundColor: MaterialStatePropertyAll(Colors.amber),
                  overlayColor: MaterialStatePropertyAll(Colors.amberAccent),
                  elevation: MaterialStatePropertyAll(10)),
              onPressed: () {},
              child: const Text(
                "Press me",
                style: TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              width: 300,
              child: ElevatedButton(
                  style: const ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(40))))),
                  onPressed: () {
                    print("Like");
                  },
                  child: const Text(
                    "Press me",
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
