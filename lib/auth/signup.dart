import 'package:fff/pages/home_management.dart';
import 'package:fff/trader/home_managementTrader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../vet/home_managementVet.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool visible = false;
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   toolbarHeight: 0,
      // ),
      // resizeToAvoidBottomInset: false,
      body: Stack(children: [
        Container(
            height: double.infinity,
          color: Color(0xff182747),
        ),
        Container(
          padding: EdgeInsets.only(top: 30),
          child: ListView(
            children: [
              SvgPicture.asset(
                "images/4.svg",
                width: 80,
                height: 80,
              ),
              SizedBox(height: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("PET LIFE",
                      style: TextStyle(
                          color: Color(0xff269A41),
                          fontWeight: FontWeight.bold,
                          fontSize: 40)),
                ],
              ),
              SizedBox(height: 20,),
              Center(
                child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10,bottom: 10,right: 25,left: 25),
                        child: TextFormField(
                          controller: firstnameController,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "First Name",
                              hintStyle: TextStyle(
                                  fontSize: 21, fontWeight: FontWeight.bold),

                            ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10,bottom: 10,right: 25,left: 25),
                        child: TextFormField(
                          controller: lastnameController,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "Last Name",
                              hintStyle: TextStyle(
                                  fontSize: 21, fontWeight: FontWeight.bold),

                            ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10,bottom: 10,right: 25,left: 25),
                        child: TextFormField(
                          controller: usernameController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Username",
                            hintStyle: TextStyle(
                                fontSize: 21, fontWeight: FontWeight.bold),

                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10,bottom: 10,right: 25,left: 25),
                        child: TextFormField(
                          controller: emailController,
                          obscureText: visible,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "enter your Email",
                              hintStyle: TextStyle(
                                  fontSize: 21, fontWeight: FontWeight.bold),


                             ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10,bottom: 10,right: 25,left: 25),
                        child: TextFormField(
                          controller: passwordController,
                          obscureText: visible,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "Enter your password",
                              hintStyle: TextStyle(
                                  fontSize: 21, fontWeight: FontWeight.bold),

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
                      Container(
                        width: 360,
                        margin: EdgeInsets.only(top: 10,bottom: 10,right: 25,left: 25),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            iconSize: 40,
                            hint: Text(
                              "    you are",
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.bold),
                            ),
                            items: ["Customer", "Vet", "Trader"]
                                .map((e) => DropdownMenuItem(
                              child: Text(
                                "   $e",
                                style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold),
                              ),
                              value: e,
                            ))
                                .toList(),
                            onChanged: (val) {
                              setState(() {
                                name = val;
                                print(name);
                              });
                            },
                            value: name,
                          ),
                        ),
                      ),
                      SizedBox(height: 25),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Color(0xff269A41),
                        ),
                        width: 200,
                        child: MaterialButton(
                          onPressed: () {

                             if( name =="Customer"){
                               Navigator.push(context, MaterialPageRoute(builder: (context) => home_management(type: name),));
                            }if(name=="Trader") {
                               Navigator.push(context, MaterialPageRoute(builder: (context) => home_mangaementTrader(),));
                             }if(name=="Vet"){
                               Navigator.push(context, MaterialPageRoute(builder: (context) => home_mangaementVet(),));
                            }
                          },
                          child: Text(
                            "Sign up",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize:35,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),

              ),
            ],
          ),
        )
      ]),
    );
  }
}
