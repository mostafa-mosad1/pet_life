import 'package:flutter/material.dart';

class Dog extends StatefulWidget {
  const Dog({Key? key}) : super(key: key);

  @override
  State<Dog> createState() => _DogState();
}

class _DogState extends State<Dog> {
  List images = [
    {
      "image": "images/cat.jpg",
      "type": "Street Cat",
      "sub": "cccccccccccccccccccccccccccdddddddddddddd",
    },
    {
      "image": "images/cat.jpg",
      "type": "Street Cat",
      "sub": "cccccccccccccccccccccccc",
    },
    {
      "image": "images/cat.jpg",
      "type": "Street Cat",
      "sub": "cccccccccccccccccccccccc",
    },
    {
      "image": "images/cat.jpg",
      "type": "Street Cat",
      "sub": "cccccccccccccccccccccccc",
    },
    {
      "image": "images/cat.jpg",
      "type": "Street Cat",
      "sub": "cccccccccccccccccccccccc",
    },
    {
      "image": "images/cat.jpg",
      "type": "Street Cat",
      "sub": "cccccccccccccccccccccccc",
    },
    {
      "image": "images/cat.jpg",
      "type": "Street Cat",
      "sub": "cccccccccccccccccccccccc",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.grey[400],
        ),
         SingleChildScrollView(
           child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      color: Colors.white12,
                      border: Border.all(width: 1.5),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  margin: EdgeInsets.all(10),
                  child: IconButton(
                      padding: EdgeInsets.only(right: 1.5, bottom: 1.5),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 25,
                      )),
                ),
                 ListView.builder(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemCount: images.length,
                    itemBuilder: (context, i) {
                      return Card(
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Image.asset(
                                images[i]['image'],
                                fit: BoxFit.cover,
                              ),
                            ),
                            Expanded(
                              flex:3,
                              child: ListTile(
                                  title: Text(
                                    "${images[i]['type']}",
                                    style: TextStyle(
                                        fontSize: 25, fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text("${images[i]['sub']}")),
                            )
                          ],
                        ),
                      );
                    },
                  ),

              ],
            ),
         ),

      ],
    );
  }
}
