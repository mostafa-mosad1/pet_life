import 'dart:async';
import 'package:fff/auth/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 3),
            () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => Signin())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight:0 ,
      ),
        body:
         Stack(
           children: [
             Container(
        height: double.infinity,
               color: Color(0xff182747),),
      Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "images/4.svg",
              width: 90,
              height: 90,
            ),
            SizedBox(
              height: 20,
            ),

            Text("PET Life",
                style: TextStyle(
                    color: Color(0xff269A41),
                    fontWeight: FontWeight.bold,
                    fontSize: 45)),

           ]),
      ),
        ],
         ),

          );
  }
}
