import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  var type;
  var temprture;
  var appetite;
  var vomiting;
  var urinating;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff182747),
        title: Text("check your health pet",style: TextStyle(fontSize: 30,color: Colors.white),),
      ),
      body: Stack(children: [
        Image(
          image: AssetImage("images/services.png"),
          fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //SizedBox(height: 45,),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 10,bottom: 10,right: 13,left: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4)),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  iconSize: 40,
                  hint: Text(
                    "   Pet_Type",
                    style: TextStyle(
                        fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  items: ["Cat","Dog","Hammster","Fish","Bird"]
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
                      type = val;
                      print(type);
                    });
                  },
                  value: type,
                ),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 10,bottom: 10,right: 13,left: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4)),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  iconSize: 40,
                  hint: Text(
                    "  High temprture",
                    style: TextStyle(
                        fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  items: ["Yes","No"]
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
                      temprture = val;
                      print(temprture);
                    });
                  },
                  value: temprture,
                ),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 10,bottom: 10,right: 15,left: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4)),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  iconSize: 40,
                  hint: Text(
                    " Vomiting",
                    style: TextStyle(
                        fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  items: ["Yes","No"]
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
                      vomiting = val;
                      print(vomiting);
                    });
                  },
                  value: vomiting,
                ),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 10,bottom: 10,right: 13,left: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4)),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  iconSize: 40,
                  hint: Text(
                    " Lack of appetite",
                    style: TextStyle(
                        fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  items: ["Yes","No"]
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
                      appetite = val;
                      print(appetite);
                    });
                  },
                  value: appetite,
                ),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 10,bottom: 10,right: 15,left: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4)),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  iconSize: 40,
                  hint: Text(
                    " Urinating",
                    style: TextStyle(
                        fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  items: ["Yes","No"]
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
                      urinating = val;
                      print(urinating);
                    });
                  },
                  value: urinating,
                ),
              ),
            ),
            SizedBox(height: 25,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Color(0xff269A41),
              ),
              width: 200,
              child: MaterialButton(
                onPressed: () {
                  if(temprture=="Yes" && appetite=="Yes"  )
                    //||vomiting=="Yes"
                      {
                    String result = "The animal is $type , it's Abnormal";
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.red,
                        content: Container(
                            height: 70,
                            child: Center(child: Text(result,style: TextStyle(fontSize: 22)))),
                      ),
                    );
                  }
                  else
                  {
                    String result = "The animal is $type , it's Normal";
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(backgroundColor: Color(0xff269A41),
                        content: Container(height: 70,
                            child: Center(child: Text(result,style: TextStyle(fontSize: 22),))),
                      ),
                    );
                  }
                },
                child: Text(
                  "Check",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize:35,
                      color: Colors.white),
                ),
              ),
            ),
          ],)
      ],) ,));
  }
}
