import 'package:flutter/material.dart';

class Day20 extends StatelessWidget {
  const Day20({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.black,
        ),
        title: const Text(
          "wanda.s",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 170,
              // color: Colors.red,
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    width: 145,
                    // color: Colors.purple,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                              'https://assets.epuzzle.info/puzzle/072/471/original.jpg'),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Wanda S.",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          "Photographer / New York",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                    // color: Colors.deepOrange,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                rowColText("150", "Posts"),
                                SizedBox(
                                  width: 10,
                                ),
                                rowColText("5k", "Followers"),
                                SizedBox(
                                  width: 10,
                                ),
                                rowColText("100", "Following"),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    child: ElevatedButton(
                                        style: ButtonStyle(),
                                        onPressed: () {},
                                        child: Text("Follow")),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.blue, width: 2),
                                      shape: BoxShape.circle),
                                  child: Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.blue,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                )
                              ],
                            ),
                          ),
                        ]),
                  ))
                ],
              ),
            ),
            Container(
                height: 90,
                // color: Colors.blue,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                      'https://assets.epuzzle.info/puzzle/072/471/original.jpg',
                                    ),
                                    fit: BoxFit.cover),
                                shape: BoxShape.circle,
                                color: Colors.orange),
                          ),
                          Text("Title")
                        ],
                      );
                    })),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 2,
              color: Colors.black26,
            ),
            Container(
              height: 50,
              // color: Colors.green,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Email",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                        fontWeight: FontWeight.w500),
                  ),
                  VerticalDivider(
                    thickness: 2,
                    color: Colors.black26,
                  ),
                  Text(
                    "Site",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                        fontWeight: FontWeight.w500),
                  ),
                  VerticalDivider(
                    thickness: 2,
                    color: Colors.black26,
                  ),
                  Text(
                    "Phone",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.black26,
              thickness: 2,
            ),
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.grid_on_sharp,
                      color: Colors.blue,
                      size: 30,
                    ),
                    Icon(
                      Icons.photo_camera_sharp,
                      color: Colors.blue,
                      size: 30,
                    ),
                    Icon(
                      Icons.person,
                      color: Colors.blue,
                      size: 30,
                    ),
                    Icon(
                      Icons.favorite_border_rounded,
                      color: Colors.blue,
                      size: 30,
                    ),
                  ]),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: Container(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: ((context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxUM27CvIaFT7gkUFGBQiCKFdjxcVNKLOj3g&s')),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: EdgeInsets.all(5),
                      // color: Colors.yellow,
                      height: 150,
                      width: 150,
                    );
                  })),
              // color: Colors.yellow,
            ))
          ],
        ),
      ),
    );
  }

  Widget rowColText(String textnum, text) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            textnum,
            style: TextStyle(fontSize: 24),
          ),
          Text(
            text,
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
