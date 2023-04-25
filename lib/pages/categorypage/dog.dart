import 'package:fff/pages/categorypage/dogdata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dog extends StatefulWidget {
  const Dog({Key? key}) : super(key: key);

  @override
  State<Dog> createState() => _DogState();
}

class _DogState extends State<Dog> {
  List images = [
    {
      "image": "images/cat.jpg",
      "type": "Cat",
      "sub": "cccc ccccc ccccc ccccc cccccc ccdddd dddddd dddd",
    },
    {
      "image": "images/dog1.jpg",
      "type": "dog",
      "sub": " aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa ",
    },
    {
      "image": "images/cat.jpg",
      "type": "cat",
      "sub": "cccccccccccccccccccccccc",
    },
    {
      "image": "images/cat.jpg",
      "type": "name",
      "sub": "cccccccccccccccccccccccc",
    },
    {
      "image": "images/cat.jpg",
      "type": "name",
      "sub": "cccccccccccccccccccccccc",
    },
    {
      "image": "images/cat.jpg",
      "type": "name",
      "sub": "cccccccccccccccccccccccc",
    },
    {
      "image": "images/cat.jpg",
      "type": "name",
      "sub": "cccccccccccccccccccccccc",
    },
    {
      "image": "images/cat.jpg",
      "type": "name",
      "sub": "cccccccccccccccccccccccc",
    },
    {
      "image": "images/cat.jpg",
      "type": "name",
      "sub": "cccccccccccccccccccccccc",
    },
    {
      "image": "images/cat.jpg",
      "type": "name",
      "sub": "cccccccccccccccccccccccc",
    },
    {
      "image": "images/cat.jpg",
      "type": "name",
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
            color:Color(0xffD4D2D2),
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
              GridView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: images.length,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  mainAxisExtent: 230,
                  maxCrossAxisExtent: 230,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, i) {
                  return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DogData(
                                      datadog: images[i],
                                    )));
                      },
                      child: Container(
                        margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25)),
                          child: Column(
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    topRight: Radius.circular(25),
                                  ),
                                  child: Image.asset(
                                    images[i]['image'],
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Center(
                                child: Text("${images[i]['type']}",
                                    style: TextStyle(
                                        fontSize: 27.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                            ],
                          ))
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
