import 'package:flutter/material.dart';
// import 'package:thirty_widgets/button.dart';
import 'package:thirty_widgets/list_grid.dart';

// import 'package:thirty_widgets/rows_col.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.deepOrangeAccent, brightness: Brightness.light),
      debugShowCheckedModeBanner: false,
      home: const ListGrid(),
    );
  }
}
