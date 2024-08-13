import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String selectedValue = 'orange';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drop Down List"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 70,
            // color: Colors.amber,
            width: MediaQuery.of(context).size.width,
            child: DropdownButton<String>(
                dropdownColor: Colors.grey[200],
                isExpanded: true,
                // value: selectedValue,
                icon: Icon(Icons.arrow_circle_down_rounded),
                items: <String>['Orange', 'mango', 'banana', 'grapes']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem(
                    child: Text(value),
                    value: value,
                  );
                }).toList(),
                onChanged: (String? newvalue) {
                  setState(() {
                    selectedValue = newvalue!;
                  });
                }),
          )
        ],
      ),
    );
  }
}
