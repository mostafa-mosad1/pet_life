import 'package:fff/trader/add_prodect.dart';
import 'package:fff/trader/edithome1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class shop_trader extends StatefulWidget {
  var Pname;
  var Pprice;
  var Pcount;
  var Pimage;

  shop_trader(
      {Key? key,
      this.dataone,
      this.datatwo,
      this.datathree,
      this.datafour,
      this.Pname,
      this.Pprice,
      this.Pcount,
      this.Pimage})
      : super(key: key);

  var dataone;
  var datatwo;
  var datathree;
  var datafour;

  @override
  State<shop_trader> createState() => _shop_traderState();
}

class _shop_traderState extends State<shop_trader> {
  List trad = [
    {
      "image": "images/cat.jpg",
      "name": "fish",
      "price": "250",
      "number of scales": "10"
    },
    {
      "image": "images/dog1.jpg",
      "name": "cat",
      "price": "150",
      "number of scales": "10"
    },
    {
      "image": "images/cat.jpg",
      "name": "dog",
      "price": "200",
      "number of scales": "10"
    },
    {
      "image": "images/cat.jpg",
      "name": "pet",
      "price": "330",
      "number of scales": "10"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
              color:Color(0xffD4D2D2),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (c) => add_prodect()));
                        },
                        icon: Icon(
                          Icons.add_circle_outline,
                          size: 30,
                        )),
                    Text(
                      "Add prodect",
                      style:
                          TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.only(top: 6, bottom: 6),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1)),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemCount: trad.length,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                width: double.infinity,
                                height: 250.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          widget.datafour != null
                                              ?
                                          Container(
                                                  width: 175.w,
                                                  height: 233.h,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                    image: DecorationImage(
                                                      image: FileImage(
                                                          widget.datafour),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                )
                                              :
                                          Container(
                                                  width: 175.w,
                                                  height: 233.h,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          "${trad[index]['image']}"),
                                                      // image: AssetImage(
                                                      //     "images/cat.jpg"),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                )
                                        ],
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        widget.dataone != null
                                            ? Text(
                                                "Name :  ${widget.dataone}",
                                                style: TextStyle(
                                                    fontSize: 20.sp,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            : Text(
                                                "Name :  ${trad[index]['name']}",
                                                style: TextStyle(
                                                    fontSize: 20.sp,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                        SizedBox(
                                          height: 25.h,
                                        ),
                                        widget.datatwo != null
                                            ? Text(
                                                "price :  ${widget.datatwo}  LE",
                                                style: TextStyle(
                                                    fontSize: 18.sp,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            : Text(
                                                "price :  ${trad[index]['price']}  LE",
                                                style: TextStyle(
                                                    fontSize: 18.sp,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                        SizedBox(height: 25.h),
                                        widget.datathree != null
                                            ? Text(
                                                "No.scales :  ${widget.datathree}",
                                                style: TextStyle(
                                                    fontSize: 18.sp,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            : Text(
                                                "No.scales :  ${trad[index]['number of scales']}",
                                                style: TextStyle(
                                                    fontSize: 18.sp,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          right: 10.w,
                           top: 8.h,
                          child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Edithome1(
                                              tradd: trad[index],
                                            )));
                              },
                              icon: Icon(
                                Icons.settings,
                                size: 30,
                              )),
                        )
                      ],
                    );
                  },
                ),
              ),
            ),
            Stack(
              children: [
                widget.Pimage != null
                    ?
                Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(4.0),
                            child: Container(
                              width: double.infinity,
                              height: 250.h,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        widget.Pimage != null
                                            ?
                                        Container(
                                                width: 175.w,
                                                height: 233.h,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  image: DecorationImage(
                                                    image: FileImage(
                                                        widget.Pimage),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              )
                                            : Container()
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      widget.Pname != null
                                          ? Text(
                                              "Name :  ${widget.Pname}",
                                              style: TextStyle(
                                                  fontSize: 20.sp,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          : Container(),
                                      SizedBox(
                                        height: 25.h,
                                      ),
                                      widget.Pprice != null
                                          ? Text(
                                              "price :  ${widget.Pprice}  LE",
                                              style: TextStyle(
                                                  fontSize: 20.sp,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          : Container(),
                                      SizedBox(
                                        height: 25.h,
                                      ),
                                      widget.Pcount != null
                                          ? Text(
                                              "Number of scales :  ${widget.Pcount}",
                                              style: TextStyle(
                                                  fontSize: 9,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          : Container(),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    : Container(),
              ],
            )
          ],
        ),
      ),
    )));
  }
}
