
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'dogdata.dart';

class Dog extends StatefulWidget {
  const Dog({Key? key}) : super(key: key);

  @override
  State<Dog> createState() => _DogState();
}

class _DogState extends State<Dog> {
  List images = [
    {
      "image": "images/cat.jpg",
      "type": "name",
      "sub": "cccc ccccc ccccc ccccc cccccc ccdddd dddddd dddd",
    },
    {
      "image": "images/cat.jpg",
      "type": "name",
      "sub": "kolo ya walleed yessss noooo ",
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
              GridView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: images.length,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  mainAxisExtent: 230,
                  maxCrossAxisExtent: 230,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1,
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
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius:
                              BorderRadius.all(Radius.circular(13)),
                              image: DecorationImage(
                                  image: AssetImage(images[i]['image']),
                                  fit: BoxFit.fill)),
                          margin: EdgeInsets.all(15),
                        ),
                        Positioned(
                          bottom: 13.h,
                          right: 2.w,
                          left: 3.w,
                          child: Center(
                            child: Container(
                              height: 30.h,
                             width: 165.w,
                              // decoration: BoxDecoration(
                              //     boxShadow: [
                              //       BoxShadow(
                              //         color: Colors.black26,
                              //       )
                              //     ],
                              //     borderRadius: BorderRadius.only(
                              //         bottomRight: Radius.circular(13),
                              //         bottomLeft: Radius.circular(13))),
                              child: Center(
                                child: Text(
                                  "${images[i]['type']}",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.green,
                                      decorationThickness: 2,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25.sp),
                                ),
                              ),
                            ),
                          ),
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
