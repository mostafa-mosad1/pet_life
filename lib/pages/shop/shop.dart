import 'package:carousel_pro/carousel_pro.dart';
import 'package:fff/components.dart';
import 'package:fff/pages/shop/accessories.dart';
import 'package:fff/pages/shop/drugs.dart';
import 'package:fff/pages/shop/food.dart';
import 'package:fff/pages/shop/pet.dart';
import 'package:fff/pages/shop/shop_management.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../auth/signup.dart';

class shop extends StatefulWidget {
  const shop({Key? key}) : super(key: key);

  @override
  State<shop> createState() => _shopState();
}

class _shopState extends State<shop> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            color:Color(0xffD4D2D2),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 220.h,
                    width: double.infinity,
                    child: Carousel(
                      images: [
                        AssetImage("images/7.png"),
                        AssetImage("images/8.jpg"),
                        AssetImage("images/fish.jpg"),
                        AssetImage("images/dog1.jpg"),
                        AssetImage("images/bird.jpg"),
                      ],
                      dotSize: 4,
                      dotIncreaseSize: 2,
                      dotBgColor: Colors.white12,
                    ),
                  ),

                  Container(

                    child: GridView.count(
                      childAspectRatio: 0.93,
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      padding: EdgeInsets.all(10.w),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      children: [
                        InkWell(
                            onTap: () => Navigator.of(context)
                                .push(MaterialPageRoute(builder: (c) => pet())),
                            child: temple(name: "pet", image: "images/cat.jpg",context:context )),
                        InkWell(
                            onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(builder: (c) => accessories())),
                            child: temple(
                                name: "accessories", image: "images/acces.jpg",context:context)),
                        InkWell(
                            onTap: () => Navigator.of(context)
                                .push(MaterialPageRoute(builder: (c) => food())),
                            child: temple(name: "food", image: "images/food.jpg",context:context)),
                        InkWell(
                            onTap: () => Navigator.of(context)
                                .push(MaterialPageRoute(builder: (c) => drugs())),
                            child: temple(name: "drugs", image: "images/drugs.jpg",context:context)),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
