import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pet_life/auth/signin.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 1),
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
                child: Image.asset(
                  "images/background1.jpeg",
                  fit: BoxFit.fill,
                  height: double.infinity,
                  width: double.infinity,
                )),
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
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 45)),

           ]),
      ),
        ],
         ),

          );
  }
}
