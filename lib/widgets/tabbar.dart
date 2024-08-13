import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          bottom: TabBar(indicatorColor: Colors.black, tabs: [
            Tab(
              icon: Icon(Icons.chat),
              text: 'Chats',
            ),
            Tab(
              icon: Icon(Icons.chat_bubble),
              text: 'Status',
            ),
            Tab(
              icon: Icon(Icons.call),
              text: 'Calls',
            ),
          ]),
        ),
        body: TabBarView(children: [
          Container(
            child: Center(
              child: Text(
                "Chats",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Text(
                "Status",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Text(
                "Calls",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
