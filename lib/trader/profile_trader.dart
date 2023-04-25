import 'package:fff/vet/profile_editVet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slide_countdown/slide_countdown.dart';

import 'edit_profileTrader.dart';

class profile_trader extends StatefulWidget {
  profile_trader({Key? key,
    this.images,
    this.name,
    this.phone,
    this.address,}) : super(key: key);
  var name;
  var phone;
  var address;
  var images;

  @override
  State<profile_trader> createState() => _profile_traderState();
}

class _profile_traderState extends State<profile_trader> {
  var na = "Mohamed Ahmed";
  var ph = "012233445556";
  var ad = "30 homs st, mansora";
  var em="S@example.com";
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
                                    builder: (c) => profile_editTrader(
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
                                fontWeight: FontWeight.bold, fontSize: 25),
                          )
                              : Text(
                            "${na}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          )),
                      Center(
                        child: Text(
                          "@moh_ahmed",
                          style: TextStyle(
                              color: Colors.black45,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(),
                          borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          width: 320.w,
                          height: 310.h,
                          child: Column(
                            children: [
                              Center(child: Container(
                                child: Text("My information",style:
                                  TextStyle(color: Colors.black,
                                  fontSize: 20.sp,fontWeight: FontWeight.bold),),
                                padding: EdgeInsets.only(top: 15.h),
                              )),
                              SizedBox(width:80.w,height: 5.h,child: Container(
                                color: Colors.green,
                              ),),
                              SizedBox(height: 30.h,),
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "   Phone",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 25.sp),
                                ),
                              ),
                              Container(
                                  alignment: Alignment.topLeft,
                                  child: widget.phone != null
                                      ? Text(
                                    "       ${widget.phone}",
                                    style: TextStyle(
                                        color: Colors.black45,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.sp),
                                  )
                                      : Text(
                                    "       ${ph}",
                                    style: TextStyle(
                                        color: Colors.black45,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.sp),
                                  )),
                              SizedBox(
                                height: 25.h,
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "   Address",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 25.sp),
                                ),
                              ),
                              Container(
                                  alignment: Alignment.topLeft,
                                  child: widget.address != null
                                      ? Text(
                                    "       ${widget.address}",
                                    style: TextStyle(
                                        color: Colors.black45,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.sp),
                                  )
                                      : Text(
                                    "       ${ad}",
                                    style: TextStyle(
                                        color: Colors.black45,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.sp),
                                  )),
                              SizedBox(
                                height: 25.h,
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "   Email",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 25.sp),
                                ),
                              ),
                              Container(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "       ${em}",
                                    style: TextStyle(
                                        color: Colors.black45,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.sp),
                                  )),

                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15.h,)
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
