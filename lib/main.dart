import 'package:flutter/material.dart';
// import 'package:thirty_widgets/widgets/day19ui.dart';
import 'package:thirty_widgets/widgets/day20ui.dart';
// import 'package:thirty_widgets/imagepicker.dart';
// import 'package:thirty_widgets/alert.dart';
// import 'package:thirty_widgets/animated_text.dart';
// import 'package:thirty_widgets/bottomNav.dart';
// import 'package:thirty_widgets/dropDown.dart';
// import 'package:thirty_widgets/form.dart';
// import 'package:thirty_widgets/stack.dart';
// import 'package:thirty_widgets/tabbar.dart';
// import 'package:thirty_widgets/widgets/location.dart';
// import 'package:thirty_widgets/bottonSheet.dart';
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
          primaryColor: Colors.lightGreen, brightness: Brightness.light),
      debugShowCheckedModeBanner: false,
      home: const Day20(),
    );
  }
}
