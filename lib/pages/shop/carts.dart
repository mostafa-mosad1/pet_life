import 'package:fff/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'favorite.dart';

class cart extends StatefulWidget {
  const cart({Key? key}) : super(key: key);

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  int x = 1;
  int y = 1;
  int z = 1;
  int p =250;

  @override
  Widget build(BuildContext context) {
    TextEditingController cardnumber = TextEditingController();
    TextEditingController namecard = TextEditingController();

    return SafeArea(
        child: Scaffold(
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
                  fontSize: 27,
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
                  size: 30,
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
                  size: 30,
                ),
              ),
              SizedBox(
                width: 15,
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Color(0xff269A41),
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return SingleChildScrollView(
                      child: Container(
                        height: 240,
                        child: Column(children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(5)),

                                border: Border.all(width: 1)),
                            height: 60,
                            margin: EdgeInsets.only(
                                top: 20, bottom: 10, right: 25, left: 25),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              controller: cardnumber,
                              decoration: InputDecoration(
                                labelText: "card number",
                                labelStyle: TextStyle(color:Colors.blue,fontSize: 15, fontWeight: FontWeight.bold),

                                filled: true,
                                fillColor: Colors.grey[1],
                                suffixText: "VISA",
                                suffixStyle: TextStyle(color:Colors.blue,fontSize: 20, fontWeight: FontWeight.bold),

                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                                border: Border.all(width: 1)),
                            height: 60,
                            margin: EdgeInsets.only(bottom: 20, right: 25, left: 25),
                            child: TextFormField(
                              controller: namecard,
                              decoration: InputDecoration(
                                labelText: "name on card",
                                labelStyle: TextStyle(color:Colors.blue,fontSize: 15, fontWeight: FontWeight.bold),
                                filled: true,
                                fillColor: Colors.grey[1],

                              ),
                            ),
                          ),
                          Container(
                            height: 40.h,
                            width: 220,
                            color:Color(0xff075965),
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Center(child: Text("Place Order",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                            ),
                          )
                        ]),
                      ),
                    );
                  });
            },
            child: Icon( Icons.landslide_sharp),
          ),
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  ListView.separated(physics:BouncingScrollPhysics(),shrinkWrap: true,
                    itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20),border: Border.all(color: Colors.black, width: 1)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              children: [
                                Container(
                                 // padding:  EdgeInsets.all(4.0),
                                  child: Container( width: 120.w,height: 150.h,
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
                          Column(
                            children: [
                              SizedBox(height: 10.h,),
                              Container(
                                width: 110.w,
                                child: Text(
                                  "cat nnnnnnnnnnnnnnnnnnnnn",
                                  style: TextStyle(
                                      fontSize: 25.sp, fontWeight: FontWeight.bold),
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              SizedBox(height: 10.h,),
                              Container(
                                width: 110.w,
                                child: Text(
                                  "250 EL",
                                  style: TextStyle(
                                      fontSize: 25.sp, fontWeight: FontWeight.bold),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 1.w,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 30,),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        x = x - 1;
                                      });
                                    },
                                    icon: Icon(
                                      Icons.indeterminate_check_box,
                                      size: 20.h,
                                    ),
                                    color: Color(0xff269A41),
                                  ),
                                  Text("$x"),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        x = x + 1;
                                      });
                                    },
                                    icon: Icon(
                                      Icons.add_box,
                                      size: 20.h,
                                    ),
                                    color: Color(0xff269A41),
                                  )
                                ],
                              ),
                              SizedBox(height: 10.h,),
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                      color: Color(0xffA20808)
                                  ),
                                  child: MaterialButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Remove",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15.sp),
                                      )))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                    itemCount: 3,
                    separatorBuilder: (context, index) =>  SizedBox(height: 5.h,),),
                  SizedBox(height: 5.h,),

                  show_price(price: 1000,count: 3)
                ],
              ),
            ),
          ),

        ));
  }
}
