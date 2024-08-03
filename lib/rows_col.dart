import 'package:flutter/material.dart';

class RowsCols extends StatelessWidget {
  const RowsCols({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[500],
        title: const Text("Rows and Column"),
      ),
      body: Container(
        height: h,
        width: w,
        color: Colors.amber[100],
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(height: 60, width: 60, color: Colors.red),
              Container(height: 60, width: 60, color: Colors.blueGrey),
              Container(height: 60, width: 60, color: Colors.green),
              Container(height: 60, width: 60, color: Colors.blue),
            ]),
        // Row(
        //     mainAxisAlignment: MainAxisAlignment.start,
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     children: [
        //       Container(height: 60, width: 60, color: Colors.red),
        //       Container(height: 60, width: 60, color: Colors.blueGrey),
        //       Container(height: 60, width: 60, color: Colors.green),
        //       Container(height: 60, width: 60, color: Colors.blue),
        //     ]),
      ),
    );
  }
}
