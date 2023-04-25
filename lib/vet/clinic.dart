import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class clinic extends StatefulWidget {
  const clinic({Key? key}) : super(key: key);

  @override
  State<clinic> createState() => _clinicState();
}

class _clinicState extends State<clinic> {
  List addd = [
    {
      "nam": "Mohamed ali",
      "dog": "Mavi",
      "num": "0123456789",
      "day": "Mon",
      "hour": "8 PM"
    },
    {
      "nam": "Ahmed ali",
      "dog": "Rex",
      "num": "0123456789",
      "day": "yes",
      "hour": "7.5 PM"
    },
    {
      "nam": "Mohamed ali",
      "dog": "Mavi",
      "num": "0123456789",
      "day": "Mon",
      "hour": "8 PM"
    },
    {
      "nam": "hossam ali",
      "dog": "Rex",
      "num": "0123456789",
      "day": "tus",
      "hour": "6.5 PM"
    },
    {
      "nam": "Mohamed Ahmed",
      "dog": "Mavi",
      "num": "0123456789",
      "day": "Mon",
      "hour": "8 PM"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              color:Color(0xffD4D2D2),
            ),
            ListView.builder(
                itemCount: addd.length,
                itemBuilder: (context, i) {
                  return Container(
                    margin: EdgeInsets.all(12),
                    height: 190.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 20.h, left: 15.w, bottom: 10.h),
                                  child: Text(
                                    "${addd[i]['nam']}",
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        color: Colors.black,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 3.h, left: 15.w, bottom: 10.h),
                                  child: Text(
                                    "${addd[i]['dog']}",
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        color: Colors.black,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 3.h, left: 15.w, bottom: 8.h),
                                  child: Text(
                                    "${addd[i]['num']}",
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        color: Colors.black,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 35.h, left: 10.w, bottom: 10.h),
                                  child: Text(
                                    "Day: ${addd[i]['day']}",
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        color: Colors.blueGrey,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 12.h, left: 12.w, bottom: 8.h),
                                  child: Text(
                                    "Hour: ${addd[i]['hour']}",
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        color: Colors.blueGrey,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(3)),
                                  color: Color(0xff28A745),
                                  border: Border.all()),
                              width: 155.w,
                              height: 43.h,
                              margin: EdgeInsets.only(
                                top: 22.h,
                              ),
                              child: MaterialButton(
                                onPressed: () {},
                                child: Text(
                                  "Accept",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25.sp,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.all(Radius.circular(3)),
                                color: Color(0xffA20808),
                              ),
                              width: 155.w,
                              height: 43.h,
                              margin: EdgeInsets.only(
                                top: 22.h,
                              ),
                              child: MaterialButton(
                                onPressed: () {},
                                child: Center(
                                  child: Text(
                                    "Another Time",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                }),
          ],
        ));
  }
}
