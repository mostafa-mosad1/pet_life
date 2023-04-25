import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image(
              image: AssetImage("images/About.png"),
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xff269A41),
                  border: Border.all(width: 1),
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              margin: EdgeInsets.only(left: 10.w, top: 10.h),
              child: IconButton(
                padding: EdgeInsets.zero,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Center(
                    child: Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: Colors.white,
                    ),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
                child: Container(
                  margin: EdgeInsets.only(top: 13),
              padding:  EdgeInsets.all(20),
              child: Container(
                width: 370.w,
                height: double.infinity,
                color: Colors.white70,
                margin: EdgeInsets.only(top: 38),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Pet Life",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text(
                          "  It is App that provides all what you need,we provide a shop which you can pets,food,accessories,and treatment.",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 25,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text(
                          "  We also provide a category which you can know types of pets to choose best pet for you.",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 25,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text(
                          "  You can communicate with doctor to book appointment to treat your pet,and you have a profile to add and modify your info and your pets.",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 25,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Text("Team Project",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold)),
                      SizedBox(height: 10,),
                      Container(
                        height: 350,
                        width: double.infinity,
                        child: Column(
                          children: [
                             Expanded(
                                  flex: 2,
                                  child:Container(
                                    margin: EdgeInsets.only(left: 15,right: 15),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage(
                                          "images/menem.jpg"
                                      ),fit: BoxFit.fill)
                                  ),
                                  ) ),
                            Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.only(left: 15,right: 15),
                                  color: Colors.grey,
                                  child: Center(
                                    child: Text("Mohamed Abdelmonem Mahmoud Mosad",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25
                                    ),),
                                  ),
                                )),

                          ],
                        ),
                      ),
                      SizedBox(height: 10,child: Container(
                        width: 100,
                        margin: EdgeInsets.all(2),
                        color: Colors.green,
                      )),
                      Container(
                        height: 350.h,
                        width: double.infinity,
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child:Container(
                                  margin: EdgeInsets.only(left: 15,right: 15),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage(
                                          "images/tombary.jpg"
                                      ),fit: BoxFit.cover)
                                  ),
                                ) ),
                            Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.only(left: 15,right: 15),
                                  color: Colors.grey,
                                  child: Center(
                                    child: Text("Mostafa Mosad Hamed Eltombary",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25
                                      ),),
                                  ),
                                )),

                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          //borderRadius:BorderRadius.only(topLeft:Radius.circular(25),topRight:Radius.circular(25))
                        ),
                        height: 260.h,
                        width: double.infinity,
                        child: Padding(
                          padding: EdgeInsets.only(top: 25.h, left: 13.w),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                      width: 40.w,
                                      height: 3.h,
                                    ),
                                    SizedBox(
                                      height: 11.h,
                                    ),
                                    Text(
                                      "A App for people who ",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Text(
                                      "interested in pets,you ",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Text(
                                      " can find all what you ",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Text(
                                      "need(pets,food,acce..",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Text(
                                      "ssories,and medicine)",
                                      style: TextStyle(color: Colors.white),
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
                                          fontSize: 21.7.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Container(
                                      color: Colors.green,
                                      width: 40.w,
                                      height: 3.h,
                                    ),
                                    SizedBox(
                                      height: 6.h,
                                    ),
                                    Container(
                                      width: 194.w,
                                      child: ListTile(
                                        leading: Icon(
                                          Icons.place_outlined,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                        title: Text(
                                          "203 Fake St.mansouer,",
                                          style: TextStyle(
                                              fontSize: 13.sp,
                                              color: Colors.white),
                                        ),
                                        subtitle: Text(
                                          "El-Dakahila,Egypt",
                                          style: TextStyle(
                                              fontSize: 13.sp,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 194.w
                                      ,
                                      child: ListTile(
                                        leading: Icon(
                                          Icons.phone,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                        title: Text(
                                          "+20 1234567890",
                                          style: TextStyle(
                                              fontSize: 13.sp,color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 194.w,
                                      child: ListTile(
                                        leading: Icon(
                                          Icons.telegram,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                        title: Text(
                                          "info@yourdomain.com",
                                          style: TextStyle(
                                              fontSize: 13.sp,color: Colors.white),
                                        ),
                                      ),
                                    ),
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
            ))
          ],
        ),
      ),
    );
  }
}
