import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:thirty_widgets/functions/databaseFunctions.dart';
import 'package:thirty_widgets/pages/pets.dart';

class DatabaseOptions extends StatefulWidget {
  const DatabaseOptions({super.key});

  @override
  State<DatabaseOptions> createState() => _DatabaseOptionsState();
}

class _DatabaseOptionsState extends State<DatabaseOptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Database options'),
        actions: [
          IconButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
              },
              icon: Icon(Icons.leave_bags_at_home))
        ],
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    create('pets', 'kitty', 'jerry', 'cat', 12);
                  },
                  child: Text('Create')),
              ElevatedButton(
                  onPressed: () {
                    update('pets', 'tom', 'age', 14);
                  },
                  child: Text('Update')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PetsLists()));
                  },
                  child: Text('Retrieve')),
              ElevatedButton(
                  onPressed: () {
                    delete('pets', 'kitty');
                  },
                  child: Text('Delete')),
            ],
          ),
        ),
      ),
    );
  }
}
