import 'package:flutter/material.dart';

class Notifi_trader extends StatefulWidget {
  const Notifi_trader({Key? key}) : super(key: key);

  @override
  State<Notifi_trader> createState() => _Notifi_traderState();
}

class _Notifi_traderState extends State<Notifi_trader> {
  List not = [
    {
      "image": "images/55.jpg",
      "description": "Your appointment with doctor is today at 9 Am",
      "time": "18m ago"
    },
    {
      "image": "images/55.jpg",
      "description": "Your appointment with doctor is tomorrow at 11 Am",
      "time": "18m ago"
    },
    {
      "image": "images/55.jpg",
      "description": "Your appointment with doctor is today at 9 Am",
      "time": "18m ago"
    },
    {
      "image": "images/55.jpg",
      "description": "Your appointment with doctor is today at 9 Am",
      "time": "18m ago"
    },
    {
      "image": "images/55.jpg",
      "description": "Your appointment with doctor is today at 9 Am",
      "time": "18m ago"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notification",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_sharp,
              size: 30,
              color: Colors.black,
            )),
      ),
      body: ListView.builder(
          itemCount: not.length,
          itemBuilder: (context, i) {
            return ListTile(
              leading: Container(
                width: 80,
                height: 80,
                child: Image.asset("${not[i]['image']}",),
              ),
              title: Text(
                "${not[i]['description']}",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("${not[i]['time']}"),
            );
          }),
    );
  }
}
