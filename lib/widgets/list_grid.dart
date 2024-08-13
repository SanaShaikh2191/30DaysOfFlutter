import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});

  @override
  State<ListGrid> createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  @override
  Widget build(BuildContext context) {
    List<String> fruits = ['orange', 'mango', 'banana', 'apple'];
    Map fruitsPerson = {
      "fruits": ['orange', 'mango', 'banana', 'apple'],
      "name": ['Sana', 'Juned', 'Ayaan', 'Saniya']
    };
    return Scaffold(
        appBar: AppBar(
          title: const Text("List and Grid"),
          backgroundColor: Colors.red,
        ),
        body: Container(
          // child: ListView.builder(
          //     itemCount: fruits.length,
          //     itemBuilder: (context, index) {
          //       return Card(
          //         child: ListTile(
          //           onTap: () {
          //             print(fruitsPerson['fruits'][index]);
          //           },
          //           leading: const Icon(Icons.person),
          //           title: Text(fruitsPerson['fruits'][index]),
          //           subtitle: Text(fruitsPerson['name'][index]),
          //         ),
          //       );
          //     }),
          // child: GridView(
          //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 2,
          //     childAspectRatio: 2 / 2,
          //     mainAxisSpacing: 3.0,
          //   ),
          //   children: [
          //     Card(
          //       child: Center(child: Text("orange")),
          //     ),
          //     Card(
          //       child: Center(child: Text("orange")),
          //     ),
          //     Card(
          //       child: Center(child: Text("orange")),
          //     ),
          //     Card(
          //       child: Center(child: Text("orange")),
          //     ),
          //     Card(
          //       child: Center(child: Text("orange")),
          //     ),
          //     Card(
          //       child: Center(child: Text("orange")),
          //     ),
          //   ],
          // ),
          child: GridView.builder(
              itemCount: fruits.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: ((context, index) {
                return Card(
                  child: ListTile(
                    title: Text(fruitsPerson['fruits'][index]),
                    subtitle: Text(fruitsPerson['name'][index]),
                  ),
                );
              })),
        ));
  }
}
