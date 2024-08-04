import 'package:flutter/material.dart';
import 'package:thirty_widgets/alert.dart';
// import 'package:thirty_widgets/dismissible.dart';
// import 'package:thirty_widgets/drawer.dart';
// import 'package:thirty_widgets/button.dart';
// import 'package:thirty_widgets/list_grid.dart';
// import 'package:thirty_widgets/snackbar.dart';

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
      home: const AlertWidget(),
    );
  }
}
