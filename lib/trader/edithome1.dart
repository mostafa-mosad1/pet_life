import 'dart:io';

import 'package:fff/trader/shop_trader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class Edithome1 extends StatefulWidget {
  Edithome1({Key? key, this.tradd}) : super(key: key);

  var tradd;

  @override
  State<Edithome1> createState() => _Edithome1State();
}

class _Edithome1State extends State<Edithome1> {
  var type;
  var gender;
  var names;
  var prices;
  var sales;
  GlobalKey<FormState> formKey = new GlobalKey<FormState>();

  var image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
            width: double.infinity,
            height: double.infinity,
          color:Color(0xffD4D2D2),),
        Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white12,
                        border: Border.all(width: 1.5),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    margin: EdgeInsets.all(10),
                    child: IconButton(
                        padding: EdgeInsets.only(right: 1.5, bottom: 1.5),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 35,
                        )),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(width: 1.5),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    margin: EdgeInsets.all(10),
                    child: IconButton(
                        padding: EdgeInsets.only(right: 1.5, bottom: 1.5),
                        onPressed: () {},
                        icon: Center(
                          child: Icon(
                            Icons.delete_forever,
                            color: Colors.white,
                            size: 35,
                          ),
                        )),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(7),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    border: Border.all(color: Colors.black)),
                child: Column(children: [
                  SizedBox(
                    height: 25.h,
                  ),
                  Stack(
                    children: [
                      image == null
                          ? Container(
                              margin: EdgeInsets.only(top: 10.h),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  border: Border.all(),
                                  image: DecorationImage(
                                      image: AssetImage(widget.tradd['image']),
                                      fit: BoxFit.cover)),
                              width: 192.w,
                              height: 228.h,
                            )
                          : Container(
                              margin: EdgeInsets.only(top: 10.h),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  border: Border.all(),
                                  image: DecorationImage(
                                      image: FileImage(image),
                                      fit: BoxFit.cover)),
                              width: 192.w,
                              height: 228.h,
                            ),
                      Positioned(
                        child: IconButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return Container(
                                      height: 200.h,
                                      child: Column(
                                        children: [
                                          Container(
                                            child: Text(
                                              "Choose photo from",
                                              style: TextStyle(
                                                  fontSize: 30.sp,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          MaterialButton(
                                            onPressed: () async {
                                              var pickedImage =
                                                  await ImagePicker().pickImage(
                                                      source:
                                                          ImageSource.camera);
                                              if (pickedImage != null) {
                                                setState(() {
                                                  image =
                                                      File(pickedImage.path);
                                                });
                                                Navigator.pop(context);
                                              }
                                            },
                                            child: Row(
                                              children: [
                                                Icon(Icons.camera),
                                                SizedBox(
                                                  width: 20.w,
                                                ),
                                                Text(
                                                  " camera",
                                                  style: TextStyle(
                                                      fontSize: 25.sp,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20.h,
                                          ),
                                          MaterialButton(
                                            onPressed: () async {
                                              var pickedImage =
                                                  await ImagePicker().pickImage(
                                                      source:
                                                          ImageSource.gallery);
                                              if (pickedImage != null) {
                                                setState(() {
                                                  image =
                                                      File(pickedImage.path);
                                                });

                                                Navigator.pop(context);
                                              }
                                            },
                                            child: Row(
                                              children: [
                                                Icon(Icons.photo_outlined),
                                                SizedBox(
                                                  width: 20.w,
                                                ),
                                                Text(
                                                  " gallery",
                                                  style: TextStyle(
                                                      fontSize: 25.sp,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  });
                            },
                            icon: Icon(
                              Icons.camera_alt_outlined,
                              size: 50.w,
                              color: Colors.black,
                            )),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        color: Colors.white,
                        width: 170.w,
                        height: 40.h,
                        child: TextFormField(
                          initialValue: widget.tradd['name'],
                          onSaved: (val) {
                            names = val;
                          },
                          validator: (val) {
                            if (val!.length > 10) {
                              return "title should be less than 10 ";
                            }

                            return null;
                          },
                          minLines: 1,
                          decoration: InputDecoration(
                              border:
                                  OutlineInputBorder(borderSide: BorderSide()),
                              labelText: "Name",
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.sp,
                                  color: Colors.black)),
                        ),
                      ),

                      Container(
                        width: 170.w,
                        height: 40.h,
                        color: Colors.white,
                        child: TextFormField(
                          initialValue: widget.tradd['price'],
                          onSaved: (val) {
                            prices = val;
                          },
                          validator: (val) {
                            if (val!.length > 50) {
                              return "notes should be less than 50 ";
                            }

                            return null;
                          },
                          minLines: 1,
                          decoration: InputDecoration(
                              border:
                                  OutlineInputBorder(borderSide: BorderSide()),
                              labelText: "Price",
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.sp,
                                  color: Colors.black)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white, border: Border.all()),
                        width: 172.w,
                        height: 40.h,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            iconSize: 25,
                            hint: Text(
                              "   Type",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 23.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                            items: ["Accessories", "Pet", "Food", "Treatment"]
                                .map((e) => DropdownMenuItem(
                                      child: Center(
                                        child: Text(
                                          "   $e",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 23.sp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      value: e,
                                    ))
                                .toList(),
                            onChanged: (val) {
                              setState(() {
                                type = val;
                              });
                            },
                            value: type,
                          ),
                        ),
                      ),

                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white, border: Border.all()),
                        width: 170.w,
                        height: 40.h,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            iconSize: 25,
                            hint: Text(
                              "   Gender",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 23.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                            items: ["Hamster", "Cat", "Dog", "Bird", "Fish"]
                                .map((f) => DropdownMenuItem(
                                      child: Center(
                                        child: Text(
                                          "   $f",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 23.sp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      value: f,
                                    ))
                                .toList(),
                            onChanged: (value) {
                              setState(() {
                                gender = value;
                              });
                            },
                            value: gender,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Container(
                    width: 181.w,
                    height: 40.h,
                    color: Colors.white,
                    child: TextFormField(
                      initialValue: widget.tradd['number of scales'],
                      onSaved: (val) {
                        sales = val;
                      },
                      validator: (val) {
                        if (val!.length > 50) {
                          return "notes should be less than 50 ";
                        }

                        return null;
                      },
                      minLines: 1,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(borderSide: BorderSide()),
                          labelText: "No.product",
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black)),
                    ),
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  Container(
                    color: Colors.green,
                    width: 150.w,
                    height: 40.h,
                    child: MaterialButton(
                      onPressed: () {
                        var formdata = formKey.currentState;
                        if (formdata!.validate()) {
                          formdata.save();
                          print("valid");
                        } else {
                          print("not valid");
                        }
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => shop_trader(
                                      dataone: names,
                                      datatwo: prices,
                                      datathree: sales,
                                      datafour: image,
                                    )));
                      },
                      child: Text(
                        "Done",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.sp,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 21,
                  ),
                ]),
              )
            ]),
          ),
        ),
      ],
    ));
  }
}
