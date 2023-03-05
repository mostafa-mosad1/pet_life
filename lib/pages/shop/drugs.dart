import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../cat.dart';
import 'carts.dart';
import 'favorite.dart';

class drugs extends StatefulWidget {
  const drugs({Key? key}) : super(key: key);

  @override
  State<drugs> createState() => _drugsState();
}

class _drugsState extends State<drugs> {
  int cartItem = 0;
  int fav = 0;
  List datafour = [
    {
      "id": true, //icon
      "image": "images/drugs.jpg",
      "type": "dog1",
      "sub": " writing description of product",
      "price": "249 EL",
      "cart": false,
    },
    {
      "id": true,
      "image": "images/drugs.jpg",
      "type": "dod2",
      "sub": " writing description of product",
      "price": "299 EL",
      "cart": false,
    },
    {
      "id": true,
      "image": "images/drugs.jpg",
      "type": "name",
      "sub": "aaaaaaaaaaaaaaaaa",
      "price": "199 EL",
      "cart": false,
    },
    {
      "id": true,
      "image": "images/drugs.jpg",
      "type": "name",
      "sub": "ccccccccccccaaaaaaaaacccccccccccc",
      "price": "250 EL",
      "cart": false,
    },
    {
      "id": true,
      "image": "images/drugs.jpg",
      "type": "name",
      "sub": " aaaaaaaaa cccccccccccccccccccccccc",
      "price": "199 EL",
      "cart": false,
    },
    {
      "id": true,
      "image": "images/drugs.jpg",
      "type": "name",
      "sub": " 111111111111111mmmmmmmm",
      "price": "120 EL",
      "cart": false,
    },
    {
      "id": true,
      "image": "images/drugs.jpg",
      "type": "name",
      "sub": "cccccccccccccccccccccccc",
      "price": "210 EL",
      "cart": false,
    },
    {
      "id": true,
      "image": "images/drugs.jpg",
      "type": "fish",
      "sub": "cccccccccccccccccccccccc",
      "price": "250 EL",
      "cart": false,
    },
    {
      "id": true,
      "image": "images/drugs.jpg",
      "type": "cat",
      "sub": "cccccccccccccccccccccccc",
      "price": "250 EL",
      "cart": false,
    },
    {
      "id": true,
      "image": "images/drugs.jpg",
      "type": "hamster",
      "sub": "cccccccccccccccccccccccc",
      "price": "250 EL",
      "cart": false,
    },
    {
      "id": true,
      "image": "images/drugs.jpg",
      "type": "sea",
      "sub": "cccccccccccccccccccccccc",
      "price": "250 EL",
      "cart": false,
    },
  ];

  void cartItemCount() {
    setState(() {
      cartItem++;
    });
  }

  void cartdereaseCount() {
    setState(() {
      cartItem--;
    });
  }

  void favIncreaseCount() {
    setState(() {
      fav++;
    });
  }

  void favDereasCount() {
    setState(() {
      fav--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_sharp,
                  color: Colors.black,
                  size: 27,
                )),
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
              Badge(
                position: BadgePosition.topEnd(top: 0, end: 1),
                badgeAnimation: BadgeAnimation.scale(
                    animationDuration: Duration(milliseconds: 300)),
                badgeContent: Text("$fav"),
                badgeStyle: BadgeStyle(
                    badgeColor: Colors.white,
                    borderSide: BorderSide(color: Colors.orangeAccent, width: 2)),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => favorite()));
                    setState(() {
                      fav;
                    });
                  },
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.redAccent,
                    size: 30,
                  ),
                ),
              ),
              SizedBox(
                width: 4,
              ),
              Badge(
                position: BadgePosition.topEnd(top: 0, end: 1),
                badgeAnimation: BadgeAnimation.scale(
                    animationDuration: Duration(milliseconds: 300)),
                badgeContent: Text("$cartItem"),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => cart()));
                    setState(() {
                      cartItem;
                    });
                  },
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              viewfour(context);
            },
            child: Icon(
              Icons.dashboard,
              size: 35,
            ),
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
                clipBehavior: Clip.hardEdge,
                physics: BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    mainAxisExtent: 330.h,
                    maxCrossAxisExtent: 285,
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
                                    datafour[index]['image'],
                                    height: 150.h,
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
                                        datafour[index]["id"] = !datafour[index]["id"];
                                        datafour[index]["id"] == false
                                            ? favIncreaseCount()
                                            : favDereasCount();
                                      });
                                    },
                                    child: datafour[index]["id"] == false
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
                                  ),
                                ),
                              ],
                            ),
                          SizedBox(height: 5.h),
                          Column(
                            children: [
                              Center(
                                child: Text(datafour[index]['type'].toUpperCase(),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 25.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ),
                              SizedBox(height: 5.h,),
                              Text(datafour[index]['sub'],
                                  maxLines: 3,
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
                                    child:
                                        Text(datafour[index]["price"],
                                            style: TextStyle(
                                                fontSize: 20.sp,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold)),

                                  ),

                                      IconButton(
                                        onPressed: () {

                                          setState(() {
                                            datafour[index]["cart"] =
                                            !datafour[index]["cart"];
                                            datafour[index]["cart"] == false
                                                ? cartdereaseCount()
                                                : cartItemCount();
                                          });
                                        },
                                        icon: datafour[index]["cart"] == false
                                            ? Icon(
                                          Icons.shopping_cart_outlined,
                                          size: 35,
                                        )
                                            : Icon(
                                          Icons.add_shopping_cart_outlined,
                                          color: Colors.green,
                                          size: 35,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              )

                        ],
                      ),
                  ),

                ),
                itemCount: datafour.length,
              ),
            ],
          ),
        ));
  }


  viewfour(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) => Wrap(
          children: [
            InkWell(
              onTap: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (c) => Cat())),
              child: ListTile(
                leading: Icon(Icons.pets_outlined),
                title: Text("Cat"),
              ),
            ),
            InkWell(
              child: ListTile(
                leading: Icon(Icons.pets_outlined),
                title: Text("Dog"),
              ),
            ),
            InkWell(
              child: ListTile(
                leading: Icon(Icons.pets_outlined),
                title: Text("Fish"),
              ),
            ),
            InkWell(
              child: ListTile(
                leading: Icon(Icons.pets_outlined),
                title: Text("Bird"),
              ),
            ),
            InkWell(
              child: ListTile(
                leading: Icon(Icons.pets_outlined),
                title: Text("Hamster"),
              ),
            ),
          ],
        ));
  }
}
