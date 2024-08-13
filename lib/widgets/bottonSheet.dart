import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet Widget"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  elevation: 0,
                  isDismissible: false,
                  enableDrag: true,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  backgroundColor: Theme.of(context).primaryColor,
                  context: context,
                  builder: (context) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          title: Text("orange"),
                          subtitle: Text("Sana"),
                        ),
                        ListTile(
                          title: Text("banana"),
                          subtitle: Text("Saniya"),
                        ),
                        ListTile(
                          title: Text("Mango"),
                          subtitle: Text("Juned"),
                        ),
                        ListTile(
                          title: Text("Grapes"),
                          subtitle: Text("Inshal"),
                        ),
                        ListTile(
                          title: Text("Pineapple"),
                          subtitle: Text("Suhana"),
                        ),
                      ],
                    );
                  });
            },
            child: Text("Show Bottom sheet")),
      ),
    );
  }
}
