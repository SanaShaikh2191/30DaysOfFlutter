import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:thirty_widgets/firebase_options.dart';
// import 'package:thirty_widgets/widgets/bottomNav.dart';
// import 'package:thirty_widgets/widgets/day20ui.dart';
import 'package:thirty_widgets/widgets/day24.dart';
import 'package:thirty_widgets/widgets/day25.dart';
// import 'package:thirty_widgets/widgets/tabbar.dart';
// import 'package:thirty_widgets/widgets/day19ui.dart';
// import 'package:thirty_widgets/widgets/day20ui.dart';
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

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

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
      home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return DatabaseOptions();
            } else {
              return Day24Authentication();
            }
          }),
    );
  }
}
