import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'carts.dart';

class favorite extends StatefulWidget {
  const favorite({Key? key}) : super(key: key);

  @override
  State<favorite> createState() => _favoriteState();
}

class _favoriteState extends State<favorite> {
  int x = 1;
  int y =1;
  int z=1;
  bool fav = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(appBar: AppBar(
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
            Icons.favorite_border,
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
      body: Column(children: [
        SizedBox(
          height: 10.h,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              border: Border.all(color: Colors.black, width: 1)),
          child:
          Container(
            width: double.infinity,
            height: 178.h,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    Container(
                     // padding: EdgeInsets.all(4.w),
                      child: Container( width: 135.w,height: 178.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage("images/cat.jpg"),
                              fit: BoxFit.cover,

                            )
                        ),
                      ),
                    )
                  ]),
                  SizedBox(
                    width: 6.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 140.w,
                        child: Text(
                          "cat nnnnnnnnnnnnnnnnnnnnnnnnnn",
                          style: TextStyle(
                              fontSize: 30.sp, fontWeight: FontWeight.bold),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Container(
                        width: 140.w,
                        child: Text(
                          "250 EL",
                          style: TextStyle(
                              fontSize: 30.sp, fontWeight: FontWeight.bold),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                          MaterialButton(onPressed: (){
                            setState(() {
                              fav=!fav;
                            });
                          },child:    fav == false ?
                          Icon(Icons.favorite,color: Colors.red,size: 50,) :
                          Icon(Icons.favorite_border,color: Colors.red,size: 50),)
                    ],
                  ),
                ],
              ),
            ),
          ),

        ),
      ],),
    ));
  }
}
