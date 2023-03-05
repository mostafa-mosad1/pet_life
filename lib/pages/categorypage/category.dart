import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../components.dart';
import '../../dog.dart';

class category extends StatefulWidget {
  const category({Key? key}) : super(key: key);

  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: Colors.grey[400]),
        ListView(children: [
          SizedBox(height: 30,),
           GridView.count(
              // childAspectRatio: 0.9,
              physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                // padding: EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,

                children: [
                  InkWell(
                      onTap: () => Navigator.of(context)
                          .push(MaterialPageRoute(builder: (c) => Dog())),
                      child: categ(name: "Cat", image: "images/cat.jpg",context: context)),
                  InkWell(
                      onTap: () => Navigator.of(context)
                          .push(MaterialPageRoute(builder: (c) => Dog())),
                      child: categ(name: "Hamster", image: "images/hamaster.jpg",context: context)),
                  InkWell(
                      onTap: () => Navigator.of(context)
                          .push(MaterialPageRoute(builder: (c) => Dog())),
                      child: categ(name: "Dog", image: "images/dog1.jpg",context: context)),
                  InkWell(
                      onTap: () => Navigator.of(context)
                          .push(MaterialPageRoute(builder: (c) => Dog())),
                      child: categ(name: "Bird", image: "images/bird.jpg",context: context)),
                  InkWell(
                      onTap: () => Navigator.of(context)
                          .push(MaterialPageRoute(builder: (c) => Dog())),
                      child: categ(name: "Fish", image: "images/fish.jpg",context: context)),
                ]),


          // Expanded(
          //   child: Row(
          //     mainAxisAlignment:MainAxisAlignment.center,
          //     children: [
          //     InkWell(
          //         onTap: () => Navigator.of(context)
          //             .push(MaterialPageRoute(builder: (c) => Dog())),
          //         child: categ(name: "Fish", image: "images/fish.jpg")),
          //   ],),
          // )
        ]),
      ],
    );
  }
}
