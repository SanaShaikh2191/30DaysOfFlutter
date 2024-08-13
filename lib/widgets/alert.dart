import 'package:flutter/material.dart';

class AlertWidget extends StatelessWidget {
  const AlertWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Alert Dialog")),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                _showMyDialog(context);
              },
              child: Text("Show Alert"))),
    );
  }
}

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          title: Text("This is an Alert"),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text("this is an alert box"),
                Text('this is Sana shaikh')
              ],
            ),
          ),
          actions: [
            TextButton(onPressed: () {}, child: Text("Approve")),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Cancel"))
          ],
        );
      });
}
