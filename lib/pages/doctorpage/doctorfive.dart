import 'package:flutter/material.dart';

class Five extends StatefulWidget {
  const Five({Key? key}) : super(key: key);

  @override
  State<Five> createState() => _FiveState();
}

class _FiveState extends State<Five> {
  TextEditingController name = TextEditingController();
  TextEditingController petname = TextEditingController();
  TextEditingController phone = TextEditingController();
  var day;
  var hour;

  GlobalKey<FormState>formstate=new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
        ),
        body: Form(
          key: formstate,
          child: Container(
              color: Colors.grey,
              height: double.infinity,
              child: ListView(shrinkWrap: true, children: [
                Stack(
                  children: [
                    Image.asset(
                      "images/55.jpg",
                      fit: BoxFit.fill,
                      height: 320,
                      width: double.infinity,
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 34,
                        )),
                    Container(
                      margin: EdgeInsetsDirectional.only(top: 270),
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: Colors.blue, blurRadius: 20, spreadRadius: 5)
                      ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Patient",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text("1K",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              Text("Experience",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              Text("5 Yr",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              Text("Rating",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              Text("4.9",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold))
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),              SizedBox(
                  height: 10,
                ),
                Text(
                  " Dr.Vet",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  " address",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(width: 1)),
                            height: 45,
                            width: 160,
                            margin: EdgeInsets.only(
                                top: 10, bottom: 10, right: 25, left: 15),
                            child: Center(
                              child: TextFormField(
                                controller: name,
                                validator: (val){
                                  if(val!.isEmpty){
                                    return ("you must enter data");
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: "Name",
                                  hintStyle: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(width: 1)),
                            height: 45,
                            width: 160,
                            margin: EdgeInsets.only(
                                top: 10, bottom: 10,left: 10,right:5 ),
                            child: Center(
                              child: TextFormField(
                                controller: petname,
                                validator: (val){
                                  if(val!.isEmpty){
                                    return ("you must enter data");
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: "Pet name",
                                  hintStyle: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(width: 1)),
                          height: 45,
                          width: 220,

                          margin: EdgeInsets.only(
                              top: 10, bottom: 10, right: 25, left: 15),
                          child: Center(
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              controller: phone,
                              validator: (val){
                                if(val!.isEmpty){
                                  return ("you must enter data");
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Phone",
                                hintStyle: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 45,
                            width:160,
                            margin: EdgeInsets.only(top: 10,bottom: 10,right: 25,left: 15),
                            decoration: BoxDecoration(
                              border: Border.all(width: 1),
                              color: Colors.white,
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                iconSize: 30,
                                hint: Text(
                                  " select day",
                                  style: TextStyle(
                                      fontSize: 23, fontWeight: FontWeight.bold),
                                ),
                                items: ["Sat", "Sun", "Mon","Tue","Wed","Thu"]
                                    .map((e) => DropdownMenuItem(
                                  child: Center(
                                    child: Text(
                                      " $e",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  value: e,
                                ))
                                    .toList(),
                                onChanged: (val) {
                                  setState(() {
                                    day = val;
                                  });
                                },
                                value: day,
                              ),
                            ),
                          ),
                          Container(
                            height: 45,
                            width:160,
                            margin: EdgeInsets.only(top: 10,bottom: 10,left: 15),
                            decoration: BoxDecoration(
                              border: Border.all(width: 1),
                              color: Colors.white,
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                iconSize: 30,
                                hint: Text(
                                  " select hour",
                                  style: TextStyle(
                                      fontSize: 23, fontWeight: FontWeight.bold),
                                ),
                                items: ["5 PM", "6 PM", "7 PM","8 PM","9 PM","10 PM"]
                                    .map((e) => DropdownMenuItem(
                                  child: Center(
                                    child: Text(
                                      " $e",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  value: e,
                                ))
                                    .toList(),
                                onChanged: (val) {
                                  setState(() {
                                    hour = val;
                                  });
                                },
                                value: hour,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Center(
                        child: Container(
                          width: 220,
                          height: 50,
                          child: MaterialButton(
                            color: Colors.green,
                            textColor: Colors.white,
                            onPressed: () {
                              var formdata =formstate.currentState;
                              if (formdata!.validate()){
                                print("valid");
                              }
                              else{
                                print("not valid");
                              }
                            },
                            child: Text(
                              "Book",
                              style: TextStyle(
                                  fontSize: 26, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ])
              ])),
        ));
  }
}
