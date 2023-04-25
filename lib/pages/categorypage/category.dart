import 'package:fff/components.dart';
import 'package:fff/pages/categorypage/dog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        Container(color:Color(0xffD4D2D2),),
        ListView(children: [
          SizedBox(height: 25,),
           GridView.count(
              childAspectRatio: 0.87,
              physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.all(20.w),
                crossAxisSpacing: 20,
                mainAxisSpacing: 25,
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
