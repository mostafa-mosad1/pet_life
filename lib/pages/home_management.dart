import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pet_life/pages/profile/profile.dart';
import 'package:pet_life/pages/search.dart';
import 'package:pet_life/pages/shop/favorite.dart';
import 'package:pet_life/pages/shop/shop.dart';
import '../auth/signin.dart';
import '../dog.dart';
import 'about.dart';
import 'categorypage/category.dart';
import 'doctorpage/doctors.dart';
import 'home.dart';

class home_management extends StatefulWidget {

  home_management({Key? key,this.type}) : super(key: key);
  var type;

  @override
  State<home_management> createState() => _home_managementState();
}

class _home_managementState extends State<home_management> {
  final items = <Widget>[
    Icon(Icons.shopping_cart, size: 40),
    Icon(Icons.dashboard_customize_outlined, size: 40),
    Icon(
      Icons.home,
      size: 40,
    ),
     Icon(
       Icons.pets,
        size: 40,
       ),
    Icon(Icons.person_pin, size: 40),
  ];

  int index = 0;
  List<Widget> pages = [shop(), category(), home(), doctors(), Profile()];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        var value = await showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text(
                  "Alert",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                content: Text(
                  "Do you want to Exit?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                actions: [
                  Container(
                    width: 70,
                    child: MaterialButton(
                        color: Colors.orange,
                        onPressed: () {
                          Navigator.of(context).pop(false);
                        },
                        child: Text(
                          "No",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  ),
                  Container(
                    width: 70,
                    child: MaterialButton(
                        color: Colors.orange,
                        onPressed: () {
                          Navigator.of(context).pop(true);
                        },
                        child: Text(
                          "Yes",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  )
                ],
              );
            });
        if (value != null) {
          return Future.value(value);
        } else {
          return Future.value(false);
        }
      },
      child: SafeArea(
          child: Scaffold(
              appBar: AppBar(
                  backgroundColor: (Colors.orangeAccent),
                  title: Container(
                    child: Center(
                      child: SvgPicture.asset(
                        "images/4.svg",
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                  actions: [
                    IconButton(
                        onPressed: () {
                          showSearch(context: context, delegate: DataSearch());
                        },
                        icon: Icon(
                          Icons.search,
                          size: 35,
                        )),
                  ]),
              drawer: Container(
                child: Drawer(
                    child: Column(
                  children: [
                    Container(
                      color: Colors.orangeAccent,
                      height: 80,
                      child: Center(
                        child: SvgPicture.asset(
                          "images/4.svg",
                          width: 95,
                          height: 95,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.miscellaneous_services,
                        color: Colors.black,
                      ),
                      title: Text(
                        "Services",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onTap: () {},
                    ),
                    Container(
                      height: 1.5,
                      width: 200,
                      color: Colors.cyan,
                    ),
                    ListTile(
                      leading:
                          Icon(Icons.add_box_outlined, color: Colors.black),
                      title: Text(
                        "About",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.of(context).push(PageRouteBuilder(pageBuilder:(context, animation, secondaryAnimation) => service(), ));

                      },
                    ),
                    Container(
                      height: 1.5,
                      width: 200,
                      color: Colors.cyan,
                    ),
                    ListTile(
                      leading: Icon(Icons.exit_to_app, color: Colors.black),
                      title: Text(
                        "Log Out",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Signin()));
                      },
                    ),
                  ],
                )),
              ),
              body: CupertinoTabScaffold(
                tabBar: CupertinoTabBar(
                  height: 60,
                  backgroundColor: Colors.black,
                  inactiveColor: Colors.white,
                  activeColor: Colors.orangeAccent,
                  items: [
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.shop_2_outlined,
                      ),
                      label: "Shop",
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.dashboard_customize_outlined),
                        label: "Category"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home), label: "Home"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.medical_information), label: "Doctor"),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.person_pin),
                      label: "Profile",
                    ),
                  ],
                ),
                tabBuilder: (BuildContext context, int index) {
                  switch (index) {
                    case 0:
                      return CupertinoTabView(
                        builder: (context) {
                          // if(widget.type=="Customer"){
                             return  CupertinoPageScaffold(child: shop());
                          // }if(widget.type=="Trader")
                          // { return  CupertinoPageScaffold(child: shop_trader());}
                          // if(widget.type=="Vet"){
                          //   return CupertinoPageScaffold(child: shop());
                          // }else{return CupertinoPageScaffold(child: error());};
                        },
                      );
                    case 1:
                      return CupertinoTabView(
                        builder: (context) {
                          return CupertinoPageScaffold(child: category());
                        },
                      );
                    case 2:
                      return CupertinoTabView(
                        builder: (context) {
                          return CupertinoPageScaffold(child: home());
                        },
                      );
                    case 3:
                      return CupertinoTabView(
                        builder: (context) {
                        //    if(widget.type=="Customer"){
                            return  CupertinoPageScaffold(child: doctors());
                        //    }if(widget.type=="Trader"){ return  CupertinoPageScaffold(child: doctors());}
                        //    if(widget.type=="Vet"){
                        //      return CupertinoPageScaffold(child: clinic());
                        //    }else{return CupertinoPageScaffold(child: error());};
                         },
                      );
                    case 4:
                      return CupertinoTabView(
                        builder: (context) {
                          // if(widget.type=="Customer"){
                             return  CupertinoPageScaffold(child: Profile());
                          // }if(widget.type=="Trader")
                          // { return  CupertinoPageScaffold(child: profile_trader());}
                          // if(widget.type=="Vet"){
                          //   return CupertinoPageScaffold(child: profile_vet());
                          // }else{return CupertinoPageScaffold(child: error());};
                        },
                      );
                    default:
                      return CupertinoTabView(
                        builder: (context) {
                          return CupertinoPageScaffold(child: favorite());
                        },
                      );
                  }
                },
              ))),
    );
  }
}
