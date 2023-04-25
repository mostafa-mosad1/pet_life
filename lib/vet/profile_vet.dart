import 'package:fff/vet/profile_editVet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slide_countdown/slide_countdown.dart';

class profile_vet extends StatefulWidget {
  profile_vet({Key? key,
    this.images,
    this.name,
    this.phone,
    this.address,}) : super(key: key);
  var name;
  var phone;
  var address;
  var images;

  @override
  State<profile_vet> createState() => _profile_vetState();
}

class _profile_vetState extends State<profile_vet> {
  var na = "Dr.Mohamed Ahmed";
  var ph = "012233445556";
  var ad = "30 homs st, mansora";
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
        color:Color(0xffD4D2D2),
        height:double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Stack(
                    children: [
                      widget.images != null?
                      Image.file(
                        widget.images,
                        fit: BoxFit.fill,
                        height: 330.h,
                        width: double.infinity,
                      ):
                      Image.asset(
                        "images/55.jpg",
                        fit: BoxFit.fill,
                        height: 330.h,
                        width: double.infinity,
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(top: 282.h),
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                              color: Colors.blue, blurRadius: 20, spreadRadius: 5)
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
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text("1K",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Column(
                              children: [
                                Text("Experience",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.bold)),
                                Text("5 Yr",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Column(
                              children: [
                                Text("Rating",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.bold)),
                                Text("4.9",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.bold))
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                          margin: EdgeInsets.only(right: 5.w),

                          alignment: Alignment.topRight,
                          child: IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (c) => profile_editVet(
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
                        height: 300.h,
                      ),
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
                      SizedBox(height: 5.h),
                      Center(
                        child: Text(
                          "@moh_ahmed",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.sp),
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(left: 15),
                              child: Text(
                                "Phone",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25.sp),
                              ),
                            ),
                            SizedBox(height: 5.h),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  width: 240.w,
                                  height: 45.h,
                                  decoration: BoxDecoration(
                                      color: Colors.white38,
                                      border: Border.all()),
                                    alignment: Alignment.topLeft,
                                    child: widget.phone != null
                                        ? Center(
                                          child: Container(
                                     // margin: EdgeInsets.only(left: 30),
                                      child: Text(
                                          "${widget.phone}",
                                          style: TextStyle(
                                              color: Colors.black45,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 23.sp),
                                      ),
                                    ),
                                        )
                                        : Center(
                                          child: Container(
                                     // margin: EdgeInsets.only(left: 30),
                                      child: Text(
                                          "${ph}",
                                          style: TextStyle(
                                              color: Colors.black45,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 23.sp),
                                      ),
                                    ),
                                        )),
                              ],
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Address",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25.sp),
                              ),
                            ),
                            SizedBox(height: 5.h),
                            Row(
                              children: [
                                Container(
                                    margin: EdgeInsets.only(left: 20),
                                    width: 240.w,
                                    height: 45.h,
                                    decoration: BoxDecoration(
                                        color: Colors.white38,
                                        border: Border.all()),
                                    alignment: Alignment.topLeft,
                                    child: widget.address != null
                                        ? Center(
                                          child: Container(
                                      child: Text(
                                          "${widget.address}",maxLines: 2,
                                          style: TextStyle(
                                              color: Colors.black45,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.sp),
                                      ),
                                    ),
                                        )
                                        : Center(
                                          child: Container(
                                      child: Text(
                                          "${ad}",maxLines: 2,
                                          style: TextStyle(
                                              color: Colors.black45,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.sp),
                                      ),
                                    ),
                                        )),
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),

                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}