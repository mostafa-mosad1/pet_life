import 'package:fff/pages/shop/carts.dart';
import 'package:fff/pages/shop/favorite.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Cat extends StatefulWidget {
  const Cat({Key? key}) : super(key: key);

  @override
  State<Cat> createState() => _CatState();
}

class _CatState extends State<Cat> {
  bool icon = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon:Icon(Icons.arrow_back,color: Colors.black,)),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
        title: Text(
          "pet life",
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (c) => favorite()));
            },
            icon: Icon(
              Icons.favorite,
              color: Colors.redAccent,
            ),
          ),
          SizedBox(
            width: 4,
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (c) => cart()));
            },
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.green,
            ),
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Stack(
        children: [
          Image(
            image: AssetImage("images/bouns.jpeg"),
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              mainAxisExtent: 360.h,
                maxCrossAxisExtent: 300,
                childAspectRatio: 2.76 / 5,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5),
            itemBuilder: (context, index) => Container(
              width: 200.w,
              height: 350.h,
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
                            "images/drugs.jpg",
                            height: 200.h,
                            width: 180.w,
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
                    SizedBox(height: 5.h,),
                    Column(
                      children: [
                        Center(
                          child: Text("Cat",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 25.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(height: 5.h,),

                        Text(" writing description of product nnnnnnnnnnn",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 20.sp,
                              color: Colors.black,
                            )),
                        SizedBox(height: 5.h,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(

                              child: Column(
                                children: [
                                  Text("250 EL",
                                      style: TextStyle(
                                          fontSize: 20.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
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
            itemCount: 25,
          ),
        ],
      ),


  );
  }
}
