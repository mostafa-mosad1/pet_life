import 'package:fff/pages/home_management.dart';
import 'package:fff/auth/signup.dart';
import 'package:fff/trader/home_managementTrader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);
  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  bool visible = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   toolbarHeight:0 ,
      // ),
      body: Stack(
        children: [
          Container(
              height: double.infinity,
            color: Color(0xff182747),

          ),
          Container(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(
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
                            //color: Colors.green,
                              color: Color(0xff269A41),
                              fontWeight: FontWeight.bold,
                              fontSize: 45)),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            height: 60,
                            margin: EdgeInsets.only(top: 10,bottom: 10,right: 25,left: 25),
                            child: TextFormField(
                              controller: emailController,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: "enter your email",
                                  hintStyle: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                  prefixIcon: Icon(
                                    Icons.person,
                                    color: Colors.green,
                                    size: 30,
                                  ),
                   ),
                            ),
                          ),
                          Container(
                            height: 60,
                            margin: EdgeInsets.only(bottom: 10,right: 25,left: 25),
                            child: TextFormField(
                              controller: passwordController,
                              obscureText: visible,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: "enter your password",
                                  hintStyle: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                  prefixIcon: Icon(Icons.lock,
                                      color: Colors.green, size: 30),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      visible = !visible;
                                      setState(() {});
                                    },
                                    icon: visible == false
                                        ? Icon(Icons.visibility,color: Colors.black,)
                                        : Icon(Icons.visibility_off,color: Colors.black,),
                                  ),
                                 ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              color: Color(0xff269A41),
                            ),
                            width: 200,
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => home_management(),
                                    ));
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                " Don't have account?",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    // color: Colors.black87
                                    color: Colors.white
                                ),
                              ),
                             
                              MaterialButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)
                                  =>Signup()
                                  ));
                                },
                                child: Text(
                                  "Register",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    color: Color(0xff269A41)),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          )
                        ],
                      ),


                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
