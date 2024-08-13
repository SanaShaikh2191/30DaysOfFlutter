import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: Container(
        child: ListView(children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: Container(
              padding: EdgeInsets.all(10),
              color: Colors.blue,
              child: const Row(children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      "https://s1.zerochan.net/Sung.Jin-woo.600.3537814.jpg"),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sana Shaikh",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'sanashaikh@gmail.com',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )
              ]),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.folder),
            title: Text("My Files"),
          ),
          const ListTile(
            leading: Icon(Icons.group),
            title: Text("Share With Me"),
          ),
          const ListTile(
            leading: Icon(Icons.star),
            title: Text("Starred"),
          ),
          const ListTile(
            leading: Icon(Icons.upload),
            title: Text("Uploads"),
          ),
          const ListTile(
            leading: Icon(Icons.delete),
            title: Text("Trash"),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.share),
            title: Text("Share"),
          ),
          const ListTile(
            leading: Icon(Icons.logout),
            title: Text("Log Out"),
          ),
        ]),
      )),
      appBar: AppBar(title: Text("Drawer Widget")),
      body: Container(
        child: Center(
          child: Text("Hey There"),
        ),
      ),
    );
  }
}
