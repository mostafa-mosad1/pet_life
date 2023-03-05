import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Card(
// color: Colors.white,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(15),
// ),
// elevation: 7,
// margin: EdgeInsets.all(10),
// child: Column(
// children: [
// Stack(
// children: [
// ClipRRect(
// borderRadius: BorderRadius.only(
// topLeft: Radius.circular(15),
// topRight: Radius.circular(15),
// ),
// child: Image.asset(
// "$image",
// height: 125.h,
// width: 180.w,
// fit: BoxFit.cover,
// ),
// ),
// ],
// ),
// Column(
// children: [
// Text("$name",
// style: TextStyle(
// fontSize: 27.sp,
// color: Colors.black,
// fontWeight: FontWeight.bold
// )),
// ],
// )
// ],
// ),
// ),

Widget temple({image, name, context}) => Container(
  height: 5,
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(25)),
    child: Column(
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
            child: Image.asset(
              image,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Center(
          child: Text("$name",
              style: TextStyle(
                  fontSize: 27.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
        ),
        SizedBox(
          height: 5.h,
        ),
      ],
    ));

Widget shop_temple({image, name, price}) => Container(
      width: 200,
      height: 275,
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
                    "$image",
                    height: 200,
                    width: 180,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  child: Text(
                    "$price LE",
                    style: TextStyle(
                        fontSize: 20,
                        backgroundColor: Colors.white12,
                        fontWeight: FontWeight.bold),
                    overflow: TextOverflow.fade,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 122,
                      child: Column(
                        children: [
                          Text("$name",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              )),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.shopping_cart))
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );

Widget dr({image, npatient, experience, rating}) => Stack(
      children: [
        Image.asset(
          "$image",
          fit: BoxFit.fill,
          height: 320,
          width: double.infinity,
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              size: 34,
            )),
        Container(
          margin: EdgeInsetsDirectional.only(top: 270),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(color: Colors.blue, blurRadius: 20, spreadRadius: 5)
          ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    "Patient",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text("$npatient",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold))
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Text("Experience",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  Text("$experience",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold))
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Text("Rating",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  Text("$rating",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold))
                ],
              )
            ],
          ),
        )
      ],
    );

Widget defultForm(
        {Controller,
        validator,
        initialvalue,
        labelText,
        ontap,
        hintText,
        prefixIcon,
        double circular = 10,
        background,
        color,
        onsaved,
        keyboard}) =>
    Container(
      width: 280,
      height: 50,
      child: TextFormField(
        initialValue: initialvalue,
        onSaved: onsaved,
        keyboardType: keyboard,
        controller: Controller,
        validator: validator,
        onTap: ontap,
        decoration: InputDecoration(
            filled: true,
            fillColor: color,
            labelText: labelText,
            hintText: hintText,
            hintStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            prefixIcon: Icon(prefixIcon),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(circular),
                borderSide: BorderSide(color: Colors.redAccent))),
      ),
    );

Widget show_price({count, price}) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 380.w,
        height: 100.h,
        decoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(color: Colors.black, width: 4)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
                Container(
                  height: 55,
                  width: 2,
                  color: Colors.red,
                ),
                Container(
                  width: 200,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "itemCount : ",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "$count",
                            style: TextStyle(fontSize: 22, color: Colors.red),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Price : ",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "$price",
                            style: TextStyle(fontSize: 30, color: Colors.red),
                          ),
                          Text(
                            " LE",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ]),
        ),
      ),
    );

Widget recommend() => Container(
      color: Colors.orangeAccent,
      height: 60,
      width: 380,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 10,
          ),
          Image(
            image: AssetImage("images/cat.jpg"),
            width: 80,
            height: 58,
          ),
          Text(
            "cat",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text(
            "250 EL",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                size: 50,
              ))
        ],
      ),
    );

Widget animal({image, nameAnimal}) => Stack(
      children: [
        Container(
          margin: EdgeInsets.only(left: 13, top: 10, bottom: 10),
          width: 160,
          height: 175,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("$image"), fit: BoxFit.cover),
              border: Border.all(width: 2, color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(15))),
        ),
        Positioned(
          bottom: 11,
          right: 1,
          left: 15,
          child: Center(
            child: Container(
              height: 35,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                    )
                  ],
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15))),
              width: 160,
              child: Center(
                child: Text(
                  nameAnimal,
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.green,
                      decorationThickness: 2,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
          ),
        )
      ],
    );

// Widget categ({image, name}) => Card(
//       color: Colors.white,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(15),
//       ),
//       elevation: 8,
//       // margin: EdgeInsets.all(10),
//       child: Column(
//         children: [
//           Stack(
//             children: [
//               ClipRRect(
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(15),
//                   topRight: Radius.circular(15),
//                 ),
//                 child: Image.asset(
//                   "$image",
//                   height: 120.h,
//                   width: 180.w,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ],
//           ),
//           Column(
//             children: [
//               Text("$name",
//                   style: TextStyle(
//                       fontSize: 27.sp,
//                       color: Colors.black,
//                       fontWeight: FontWeight.bold)),
//             ],
//           )
//         ],
//       ),
//     );

Widget categ({image, name, context}) => Container(
    height: 3.h,
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(25)),
    child: Column(
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
            child: Image.asset(
              image,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Center(
          child: Text("$name",
              style: TextStyle(
                  fontSize: 27.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
        ),
        SizedBox(
          height: 5.h,
        ),
      ],
    ));
