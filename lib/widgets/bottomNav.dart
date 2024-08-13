import 'package:flutter/material.dart';

import 'package:thirty_widgets/widgets/alert.dart';
import 'package:thirty_widgets/widgets/dismissible.dart';
import 'package:thirty_widgets/widgets/rows_col.dart';
import 'package:thirty_widgets/widgets/snackbar.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedIndex = 0;

  // List<Widget> widgets = [
  //   const Text("Home"),
  //   const Text("Search"),
  //   const Text("Add"),
  //   const Text("Profile"),
  // ];
  PageController pageController = PageController();

  void onTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Bottom Navigation"),
      // ),
      body: PageView(
        controller: pageController,
        children: const [
          AlertWidget(),
          SnackbarWidget(),
          DismissibleWidget(),
          RowsCols()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: onTapped,
      ),
    );
  }
}
