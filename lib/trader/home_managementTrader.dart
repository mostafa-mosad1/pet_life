import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pet_life/trader/profile_trader.dart';
import 'package:pet_life/trader/shop_trader.dart';

import '../auth/signin.dart';
import '../error.dart';
import '../pages/about.dart';
import '../pages/doctorpage/doctors.dart';
import '../pages/home.dart';
import '../pages/search.dart';
import '../vet/clinic.dart';
import '../vet/home_doctor.dart';
import '../vet/profile_vet.dart';
import 'notification_trader.dart';

class home_mangaementTrader extends StatefulWidget {
  const home_mangaementTrader({Key? key}) : super(key: key);

  @override
  State<home_mangaementTrader> createState() => _home_mangaementTraderState();
}

class _home_mangaementTraderState extends State<home_mangaementTrader> {
  final items = <Widget>[
    Icon(
      Icons.home,
      size: 50,
    ),
    Icon(
      Icons.add_business_outlined,
      size: 40,
    ),
    Icon(Icons.person_pin, size: 40),
  ];
  List<StatefulWidget> page = [home_doctor(), clinic(), profile_vet()];
  int index = 1;
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
                  margin: EdgeInsets.only(left: 35),
                  child: Row(
                    children: [
                      Text(
                        "Pet  ",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent),
                      ),
                      SvgPicture.asset(
                        "images/4.svg",
                        width: 50,
                        height: 50,
                      ),
                      Text(
                        " Life",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.green),
                      ),
                    ],
                  ),
                ),
                // Container(
                //     child: SvgPicture.asset(
                //       "images/4.svg",
                //       width: 50,
                //       height: 50,
                //     ),
                // ),
                actions: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  Notifi_trader(),
                        ));
                      },
                      icon: Icon(
                        Icons.notifications,
                        size: 30,
                      ))
                ],
              ),
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
                      leading:
                          Icon(Icons.add_box_outlined, color: Colors.black),
                      title: Text(
                        "About",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  service(),
                        ));
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
                      icon: Icon(Icons.home_outlined),
                      label: "home",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.pets),
                      label: "doctor",
                    ),
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
                          return CupertinoPageScaffold(child: shop_trader());
                        },
                      );
                    case 1:
                      return CupertinoTabView(
                        builder: (context) {
                          return CupertinoPageScaffold(child: doctors());
                        },
                      );
                    case 2:
                      return CupertinoTabView(
                        builder: (context) {
                          return CupertinoPageScaffold(child: profile_trader());
                        },
                      );

                    default:
                      return CupertinoTabView(
                        builder: (context) {
                          return CupertinoPageScaffold(child: error());
                        },
                      );
                  }
                },
              ))),
    );
  }
}
