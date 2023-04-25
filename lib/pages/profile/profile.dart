import 'package:fff/components.dart';
import 'package:fff/pages/profile/edit_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slide_countdown/slide_countdown.dart';

class Profile extends StatefulWidget {
  Profile(
      {Key? key,
      this.images,
      this.name,
      this.phone,
      this.address,
      this.imagestwo,
      this.petName,
      this.time})
      : super(key: key);

  var name;
  var phone;
  var address;
  var images;
  var imagestwo;
  var petName;
  var time;

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var na = "Mohamed Ahmed";
  var ph = "012233445556";
  var ad = "30 homs st, mansora";

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Color(0xffD4D2D2),
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              "images/pro4.jpg",
              height: 180,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                    alignment: Alignment.topRight,
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (c) => edit_profile(
                                    nameed: na,
                                    phoneed: ph,
                                    addressed: ad,
                                  )));
                        },
                        icon: Icon(
                          Icons.settings,
                          size: 40,
                        ))),
                SizedBox(
                  height: 30,
                ),
                Center(
                    child: widget.images != null
                        ? CircleAvatar(
                            backgroundImage: FileImage(widget.images),
                            radius: 95,
                          )
                        : Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("images/pro1.jpg"),
                                    fit: BoxFit.cover),
                                border:
                                    Border.all(color: Colors.black, width: 2),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(140))),
                            width: 190,
                            height: 190)),
                Center(
                    child: widget.name != null
                        ? Text(
                            "${widget.name}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25.sp),
                          )
                        : Text(
                            "${na}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25.sp),
                          )),
                Center(
                  child: Text(
                    "@moh_ahmed",
                    style: TextStyle(
                        color
                            : Colors.black45,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 5),
                        child: Text(
                          "Phone",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25.sp),
                        ),
                      ),
                      Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 15),
                          child: widget.phone != null
                              ? Text(
                                  "${widget.phone}",
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.spMax),
                                )
                              : Container(
                            margin: EdgeInsets.only(left: 15),
                                child: Text(
                                      "${ph}",
                                    style: TextStyle(
                                        color: Colors.black45,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.spMax),
                                  ),
                              )),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 5),
                        child: Text(
                          "Address",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25.sp),
                        ),
                      ),
                      Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 15),
                          child: widget.address != null
                              ? Text(
                                  "${widget.address}",
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.sp),
                                )
                              : Container(
                            margin: EdgeInsets.only(left: 15),
                                child: Text(
                                    "${ad}",
                                    style: TextStyle(
                                        color: Colors.black45,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.sp),
                                  ),
                              )),
                      SizedBox(
                        height: 12,
                      ),
                      Center(
                          child: Container(
                        width: 370.w,
                        height: 270.h,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 2, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(15))),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 5.h,
                            ),
                            SizedBox(
                              width: 75.w,
                            ),
                            Center(
                                child: Text("My animals",
                                    style: TextStyle(
                                        wordSpacing: 2,
                                        decorationThickness: 3,
                                        fontSize: 25.sp,
                                        fontWeight: FontWeight.bold))),
                            Container(
                              width: 70.w,
                              height: 5.h,
                              color: Colors.green,
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Dismissible(
                                    key: UniqueKey(),
                                    background: Container(
                                      color: Colors.red,
                                      child: Icon(
                                        Icons.delete,
                                        size: 60.h,
                                        color: Colors.white,
                                      ),
                                    ),
                                    direction: DismissDirection.vertical,
                                    child: Stack(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              left: 13, top: 10, bottom: 10),
                                          width: 199,
                                          height: 210,
                                          alignment: Alignment.topRight,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "images/pro2.jpg"),
                                                  fit: BoxFit.cover),
                                              border: Border.all(
                                                  width: 2, color: Colors.black),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15))),
                                          child: Padding(
                                            padding: EdgeInsets.all(1.0),
                                            child: SlideCountdown(
                                              duration: Duration(days: 2),
                                            ),
                                          ),
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
                                                      bottomRight:
                                                          Radius.circular(15),
                                                      bottomLeft:
                                                          Radius.circular(15))),
                                              width: 197,
                                              child: Center(
                                                child: Text(
                                                  "Rex",
                                                  style: TextStyle(
                                                      decoration: TextDecoration
                                                          .underline,
                                                      decorationColor:
                                                          Colors.green,
                                                      decorationThickness: 2,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Dismissible(
                                    key: UniqueKey(),
                                    background: Container(
                                      color: Colors.red,
                                      child: Icon(
                                        Icons.delete,
                                        size: 60,
                                        color: Colors.white,
                                      ),
                                    ),
                                    direction: DismissDirection.vertical,
                                    child: Stack(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              left: 13, top: 10, bottom: 10),
                                          width: 199,
                                          height: 210,
                                          alignment: Alignment.topRight,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "images/pro3.jpg"),
                                                  fit: BoxFit.cover),
                                              border: Border.all(
                                                  width: 2, color: Colors.black),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15))),
                                          child: Padding(
                                            padding: EdgeInsets.all(1.0),
                                            child: SlideCountdown(
                                              duration: Duration(days: 2),
                                            ),
                                          ),
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
                                                      bottomRight:
                                                          Radius.circular(15),
                                                      bottomLeft:
                                                          Radius.circular(15))),
                                              width: 197,
                                              child: Center(
                                                child: Text(
                                                  "Mavi",
                                                  style: TextStyle(
                                                      decoration: TextDecoration
                                                          .underline,
                                                      decorationColor:
                                                          Colors.green,
                                                      decorationThickness: 2,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Dismissible(
                                    key: UniqueKey(),
                                    background: Container(
                                      color: Colors.red,
                                      child: Icon(
                                        Icons.delete,
                                        size: 60,
                                        color: Colors.white,
                                      ),
                                    ),
                                    direction: DismissDirection.vertical,
                                    child: Stack(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              left: 13, top: 10, bottom: 10),
                                          width: 199,
                                          height: 210,
                                          alignment: Alignment.topRight,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "images/pro2.jpg"),
                                                  fit: BoxFit.cover),
                                              border: Border.all(
                                                  width: 2, color: Colors.black),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15))),
                                          child: Padding(
                                            padding: EdgeInsets.all(1.0),
                                            child: SlideCountdown(
                                              duration: Duration(days: 2),
                                            ),
                                          ),
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
                                                      bottomRight:
                                                          Radius.circular(15),
                                                      bottomLeft:
                                                          Radius.circular(15))),
                                              width: 197,
                                              child: Center(
                                                child: Text(
                                                  "Rex",
                                                  style: TextStyle(
                                                      decoration: TextDecoration
                                                          .underline,
                                                      decorationColor:
                                                          Colors.green,
                                                      decorationThickness: 2,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Dismissible(
                                    key: UniqueKey(),
                                    direction: DismissDirection.vertical,
                                    background: Container(
                                      color: Colors.red,
                                      child: Icon(
                                        Icons.delete,
                                        size: 60,
                                        color: Colors.white,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [
                                        widget.imagestwo != null
                                            ? Container(
                                                margin: EdgeInsets.only(
                                                    left: 13,
                                                    top: 10,
                                                    bottom: 10),
                                                width: 199,
                                                height: 210,
                                                alignment: Alignment.topRight,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: FileImage(
                                                            widget.imagestwo),
                                                        fit: BoxFit.cover),
                                                    border: Border.all(
                                                        width: 2,
                                                        color: Colors.black),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(15))),
                                                child: Padding(
                                                  padding: EdgeInsets.all(1.0),
                                                  child: SlideCountdown(
                                                    duration: Duration(days: 30),
                                                  ),
                                                ),
                                              )
                                            : Container(),
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
                                                      bottomRight:
                                                          Radius.circular(15),
                                                      bottomLeft:
                                                          Radius.circular(15))),
                                              width: 197,
                                              child: Center(
                                                child: Text(
                                                  "${widget.petName}",
                                                  style: TextStyle(
                                                      decoration: TextDecoration
                                                          .underline,
                                                      decorationColor:
                                                          Colors.green,
                                                      decorationThickness: 2,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
