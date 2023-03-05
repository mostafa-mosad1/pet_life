import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_life/pages/shop/pet.dart';

import 'categorypage/category.dart';
import 'doctorpage/doctors.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  bool icon = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[400],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Hello Dear",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                " Lets shop something!",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 250,
                width: double.infinity,
                child: Carousel(
                  images: [
                    AssetImage("images/7.png"),
                    AssetImage("images/8.jpg"),
                    AssetImage("images/fish.jpg"),
                    AssetImage("images/dog1.jpg"),
                    AssetImage("images/bird.jpg"),
                  ],
                  dotSize: 2,
                  dotIncreaseSize: 2,
                  dotBgColor: Colors.white12,
                  dotColor: Colors.white,
                  dotIncreasedColor: Colors.yellow,
                ),
              ),
              InkWell(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (c) => pet())),
                child: ListTile(
                  title: Text(
                    "SHOP",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.green,
                      decorationThickness: 2,
                    ),
                  ),
                  trailing: Text("view all...",
                      style: TextStyle(
                          fontSize: 21, color: Colors.deepOrangeAccent)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                    height: 380,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                    ),
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) => Container(
                              width: 200,
                              height: 350,
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                elevation: 7,
                                margin: EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            topRight: Radius.circular(15),
                                          ),
                                          child: Image.asset(
                                            "images/cat.jpg",
                                            height: 200,
                                            width: 180,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Container(
                                            child: MaterialButton(
                                              minWidth: 25,
                                              padding: EdgeInsets.zero,
                                              onPressed: () {
                                                setState(() {
                                                  icon = !icon;
                                                });
                                              },
                                              child: icon == false
                                                  ? Icon(
                                                      Icons.favorite,
                                                      color: Colors.red,
                                                      size: 40,
                                                    )
                                                  : Icon(
                                                      Icons.favorite_border,
                                                      color: Colors.red,
                                                      size: 40,
                                                    ),
                                            )),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Column(
                                      children: [
                                        Center(
                                          child: Text("Cat",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                            " writing description of product nnnnnnnnnnn",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black,
                                            )),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              width: 122,
                                              child: Column(
                                                children: [
                                                  Text("250 EL",
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                ],
                                              ),
                                            ),
                                            Column(
                                              children: [
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.shopping_cart,
                                                      size: 30,
                                                    ))
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                        separatorBuilder: (context, index) => SizedBox(
                              width: 1,
                            ),
                        itemCount: 7)),
              ),
              // SizedBox(height: 300,),
              InkWell(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (c) => doctors())),
                child: ListTile(
                  title: Text(
                    "Doctor",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.green,
                      decorationThickness: 2,
                    ),
                  ),
                  trailing: Text("view all...",
                      style: TextStyle(
                          fontSize: 21, color: Colors.deepOrangeAccent)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                    height: 260,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                    ),
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) => Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(width: 1.8),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25))),
                              margin: EdgeInsets.all(10),
                              width: 200,
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        height: 190,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            border: Border.all(width: 0.5),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(24),
                                                topRight: Radius.circular(24)),
                                            image: DecorationImage(
                                                image:
                                                    AssetImage("images/56.jpg"),
                                                fit: BoxFit.fill)),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(top: 7),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(24),
                                                bottomRight:
                                                    Radius.circular(20))),
                                        height: 35,
                                        width: 65,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 29,
                                          ),
                                          Text(
                                            "4.9",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Dr.vet",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                        separatorBuilder: (context, index) => SizedBox(
                              width: 1,
                            ),
                        itemCount: 7)),
              ),
              InkWell(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (c) => category())),
                child: ListTile(
                  title: Text(
                    "CATEGORY",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.green,
                      decorationThickness: 2,
                    ),
                  ),
                  trailing: Text("view all...",
                      style: TextStyle(
                          fontSize: 21, color: Colors.deepOrangeAccent)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                    height: 380,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                    ),
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) => Container(
                              width: 200,
                              height: 350,
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                elevation: 7,
                                margin: EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            topRight: Radius.circular(15),
                                          ),
                                          child: Image.asset(
                                            "images/cat.jpg",
                                            height: 200,
                                            width: 180,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Container(
                                            child: MaterialButton(
                                              minWidth: 25,
                                              padding: EdgeInsets.zero,
                                              onPressed: () {
                                                setState(() {
                                                  icon = !icon;
                                                });
                                              },
                                              child: icon == false
                                                  ? Icon(
                                                      Icons.favorite,
                                                      color: Colors.red,
                                                      size: 40,
                                                    )
                                                  : Icon(
                                                      Icons.favorite_border,
                                                      color: Colors.red,
                                                      size: 40,
                                                    ),
                                            )),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Column(
                                      children: [
                                        Center(
                                          child: Text("Cat",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                            " writing description of product nnnnnnnnnnn",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black,
                                            )),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              width: 122,
                                              child: Column(
                                                children: [
                                                  Text("250 EL",
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                ],
                                              ),
                                            ),
                                            Column(
                                              children: [
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.shopping_cart,
                                                      size: 30,
                                                    ))
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                        separatorBuilder: (context, index) => SizedBox(
                              width: 1,
                            ),
                        itemCount: 7)),
              ),
              InkWell(
                child: ListTile(
                  title: Text(
                    "service",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.green,
                      decorationThickness: 2,
                    ),
                  ),
                  trailing: Text("view all...",
                      style: TextStyle(
                          fontSize: 21, color: Colors.deepOrangeAccent)),
                ),
              ),
              SizedBox(
                height: 300,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black87,
                   ),
                height: 260.h,
                width: double.infinity.w,
                child: Padding(
                  padding: EdgeInsets.only(top: 25.h, left: 13.w),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Pet Life",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              color: Colors.green,
                              width: 20.w,
                              height: 3.h,
                            ),
                            SizedBox(
                              height: 11.h,
                            ),
                            Text(
                              "A App for people who ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13.sp,
                                  letterSpacing: 1),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              "interested in pets,you ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13.sp,
                                  letterSpacing: 1),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              " can find all what you ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13.sp,
                                  letterSpacing: 1),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              "need(pets,food,acce..",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13.sp,
                                  letterSpacing: 1),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              "ssories,and medicine)",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13.sp,
                                  letterSpacing: 1),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Have a Question?",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              color: Colors.green,
                              width: 20.w,
                              height: 3.h,
                            ),
                            SizedBox(height: 6.h),
                            Container(
                              width: 199.w,
                              child: ListTile(
                                leading: Icon(
                                  Icons.place_outlined,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                title: Text(
                                  "203 Fake St.mansouer,",
                                  style: TextStyle(color: Colors.white),
                                ),
                                subtitle: Text(
                                  "El-Dakahila,Egypt",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            Container(
                              width: 199.w,
                              child: ListTile(
                                leading: Icon(
                                  Icons.phone,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                title: Text(
                                  "+20 1234567890",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            Container(
                              width: 199.w,
                              child: ListTile(
                                leading: Icon(
                                  Icons.telegram,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                title: Text(
                                  "info@yourdomain.com",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),

                            // SizedBox(height: 2,),
                            // Text(" can find all what you ",style: TextStyle(color: Colors.white),),
                            // SizedBox(height: 2,),
                            // Text("need(pets,food,acce..",style: TextStyle(color: Colors.white),),
                            // SizedBox(height: 2,),
                            // Text("ssories,and medicine)",style: TextStyle(color: Colors.white),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
