// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:fff/pages/shop/carts.dart';
// import 'package:fff/pages/shop/pet.dart';
// import 'package:fff/pages/shop/shop.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import '../home.dart';
// import 'accessories.dart';
// import 'drugs.dart';
// import 'food.dart';
//
// class shop_management extends StatefulWidget {
//   const shop_management({Key? key}) : super(key: key);
//
//   @override
//   State<shop_management> createState() => _shop_managementState();
// }
//
// class _shop_managementState extends State<shop_management> {
//   final items = <Widget>[
//
//     Icon(Icons.shopping_cart,size: 40),
//     Icon(Icons.dashboard_customize_outlined,size: 40),
//     Icon(Icons.home,size: 50,),
//     Icon(Icons.pets,size: 40,),
//     Icon(Icons.person_pin,size: 40),
//   ];
// // pet(),accessories(),food(),drugs()
//   int index = 2;
//   List<Widget> pages =[pet(),accessories(),food(),drugs(),cart()];
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(child: Scaffold(
//
//         body: pages[index],
//         //  bottomNavigationBar: Theme(
//         //
//         //   data:Theme.of(context).copyWith(iconTheme: IconThemeData(color: Colors.white)),
//         //   child: CurvedNavigationBar (items: items,
//         //     index:index,
//         //     height: 60,
//         //     onTap:(index)=> setState(() => this.index=index ) ,
//         //     backgroundColor: Colors.black,
//         //     color: Colors.black,
//         //     buttonBackgroundColor: Colors.orangeAccent,
//         //
//         //
//         //   ),)
//     )
//     );
//   }
// }
