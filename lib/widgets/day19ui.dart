import 'package:flutter/material.dart';

class Day19 extends StatefulWidget {
  const Day19({super.key});

  @override
  State<Day19> createState() => _Day19State();
}

class _Day19State extends State<Day19> {
  @override
  Widget build(BuildContext context) {
    // var h = MediaQuery.of(context).size.height;
    // var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(children: [
          Stack(children: [
            Positioned(
              child: Container(
                height: 450,
                // color: Colors.yellow,
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        height: 400,
                        decoration: BoxDecoration(
                            // color: Colors.red,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://www.pacegallery.com/media/images/16_9-2.width-2000.png'))),
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 24,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://assets.epuzzle.info/puzzle/072/471/original.jpg'),
                          radius: 50,
                        )),
                    Positioned(
                        right: 30,
                        top: 80,
                        child: Icon(Icons.favorite_border_outlined)),
                    Positioned(
                        left: 30,
                        top: 80,
                        child: Icon(Icons.arrow_back_outlined))
                  ],
                ),
              ),
            ),
          ]),
          Container(
            // color: Colors.blue,
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Madrid City Tour For Designers',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    // color: Colors.white
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'This is a Random description of the Topic',
                  style: TextStyle(fontSize: 15, color: Colors.grey.shade500),
                )
              ],
            ),
          ),
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                rowIconText("20", Icons.favorite_border_rounded),
                rowIconText("34", Icons.upload),
                rowIconText("82", Icons.message),
                rowIconText("295", Icons.face),
              ],
            ),
          ),
          Divider(),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
                "Where can I get some ? There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable"),
          )
        ]),
      ),
    );
  }

  Widget rowIconText(String text, IconData icon) {
    return Row(
      children: [
        Text(text, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        SizedBox(width: 5),
        Icon(icon)
      ],
    );
  }
}
