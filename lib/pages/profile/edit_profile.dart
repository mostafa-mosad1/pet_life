import 'dart:io';

import 'package:fff/components.dart';
import 'package:fff/pages/profile/add_animal.dart';
import 'package:fff/pages/profile/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class edit_profile extends StatefulWidget {
  edit_profile(
      {Key? key,
      this.petimage,
      this.petName,
      this.time,
      this.nameed,
      this.phoneed,
      this.addressed})
      : super(key: key);
  var petimage;
  var petName;
  var time;
  var nameed;
  var phoneed;
  var addressed;

  @override
  State<edit_profile> createState() => _edit_profileState();
}

class _edit_profileState extends State<edit_profile> {
  var image;
  var nameController;
  var addressController;
  var phoneController;
  GlobalKey<FormState> formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      color:Color(0xffD4D2D2),
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              "images/pro4.jpg",
              height: 180,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                      alignment: Alignment.topRight,
                      child: IconButton(
                          onPressed: () {
                            var formdata = formKey.currentState;
                            if (formdata!.validate()) {
                              formdata.save();
                              print("valid");
                            } else {
                              print("not valid");
                            }
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (c) => Profile(
                                      name: nameController,
                                      phone: phoneController,
                                      address: addressController,
                                      images: image,
                                      imagestwo: widget.petimage,
                                      petName: widget.petName,
                                      time: widget.time,
                                    )));
                          },
                          icon: Icon(
                            Icons.task_alt_outlined,
                            size: 40,
                          ))),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                      child: Stack(
                    children: [
                      image == null
                          ? Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("images/pro1.jpg"),
                                      fit: BoxFit.cover),
                                  border:
                                      Border.all(color: Colors.black, width: 2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(140))),
                              width: 190,
                              height: 190)
                          : CircleAvatar(
                              radius: 95,
                              backgroundImage: FileImage(image),
                            ),
                      Positioned(
                          bottom: 1,
                          top: 144,
                          left: 120,
                          child: IconButton(
                              onPressed: () {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (context) {
                                      return Container(
                                        height: 200,
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Text(
                                                "Choose photo from",
                                                style: TextStyle(
                                                    fontSize: 30,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            MaterialButton(
                                              onPressed: () async {
                                                var pickedImage =
                                                    await ImagePicker()
                                                        .pickImage(
                                                            source: ImageSource
                                                                .camera);
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
                                                    width: 20,
                                                  ),
                                                  Text(
                                                    " camera",
                                                    style: TextStyle(
                                                        fontSize: 25,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            MaterialButton(
                                              onPressed: () async {
                                                var pickedImage =
                                                    await ImagePicker()
                                                        .pickImage(
                                                            source: ImageSource
                                                                .gallery);
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
                                                    width: 20,
                                                  ),
                                                  Text(
                                                    " gallery",
                                                    style: TextStyle(
                                                        fontSize: 25,
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
                                Icons.camera_alt,
                                size: 43,
                                color: Colors.white,
                              )))
                    ],
                  )),
                  SizedBox(
                    height: 12,
                  ),
                  Center(
                    child: Container(
                        height: 60,
                        margin: EdgeInsets.only(
                            top: 10, bottom: 10, right: 25, left: 25),
                        child: defultForm(
                            initialvalue: widget.nameed,
                            onsaved: (val) {
                              nameController = val;
                            },
                            labelText: "name",
                            validator: (value) =>
                                value!.isEmpty ? "enter a valid Name" : null)),
                  ),
                  Center(
                    child: Text(
                      "@moh_ahmed",
                      style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 5),
                          child: Text(
                            " Phone",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(left: 15),
                            child: defultForm(
                              initialvalue: widget.phoneed,
                              onsaved: (val) {
                                phoneController = val;
                              },
                              labelText: "phone",
                              validator: (value) =>
                                  value!.isEmpty ? "enter a valid Phone" : null,
                            )),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 5),
                          child: Text(
                            " Address",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(left: 15),
                            child: defultForm(
                              initialvalue: widget.addressed,
                              onsaved: (val) {
                                addressController = val;
                              },
                              labelText: "address",
                              validator: (value) => value!.isEmpty
                                  ? "enter a valid Address"
                                  : null,
                            )),
                        SizedBox(
                          height: 12,
                        ),
                        Center(
                            child: Container(
                          width: 370.w,
                          height: 275.h,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(width: 2, color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    width: 75,
                                  ),
                                  Center(
                                      child: Text("My animals",
                                          style: TextStyle(
                                              wordSpacing: 2,
                                              decorationThickness: 3,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold))),
                                  Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (c) =>
                                                        add_animal()));
                                          },
                                          icon: Icon(
                                            Icons.add_circle_outline,
                                            size: 30,
                                          )),
                                      Text(
                                        "add",
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                width: 70,
                                height: 5,
                                color: Colors.green,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              left: 13, top: 10, bottom: 10),
                                          width: 160,
                                          height: 175,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "images/pro2.jpg"),
                                                  fit: BoxFit.cover),
                                              border: Border.all(
                                                  width: 2,
                                                  color: Colors.black),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15))),
                                        ),
                                        Positioned(
                                          bottom: 11,
                                          right: 1,
                                          left: 15,
                                          child: Center(
                                            child: Container(
                                              height: 35,
                                              decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black26,
                                                    )
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          bottomRight:
                                                              Radius.circular(
                                                                  15),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  15))),
                                              width: 160,
                                              child: Center(
                                                child: Text(
                                                  "Rex",
                                                  style: TextStyle(
                                                      decoration: TextDecoration
                                                          .underline,
                                                      decorationColor:
                                                          Colors.green,
                                                      decorationThickness: 2,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Stack(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              left: 13, top: 10, bottom: 10),
                                          width: 160,
                                          height: 175,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "images/pro3.jpg"),
                                                  fit: BoxFit.cover),
                                              border: Border.all(
                                                  width: 2,
                                                  color: Colors.black),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15))),
                                        ),
                                        Positioned(
                                          bottom: 11,
                                          right: 1,
                                          left: 15,
                                          child: Center(
                                            child: Container(
                                              height: 35,
                                              decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black26,
                                                    )
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          bottomRight:
                                                              Radius.circular(
                                                                  15),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  15))),
                                              width: 160,
                                              child: Center(
                                                child: Text(
                                                  "Mavi",
                                                  style: TextStyle(
                                                      decoration: TextDecoration
                                                          .underline,
                                                      decorationColor:
                                                          Colors.green,
                                                      decorationThickness: 2,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Stack(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              left: 13, top: 10, bottom: 10),
                                          width: 160,
                                          height: 175,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "images/pro2.jpg"),
                                                  fit: BoxFit.cover),
                                              border: Border.all(
                                                  width: 2,
                                                  color: Colors.black),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15))),
                                        ),
                                        Positioned(
                                          bottom: 11,
                                          right: 1,
                                          left: 15,
                                          child: Center(
                                            child: Container(
                                              height: 35,
                                              decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black26,
                                                    )
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          bottomRight:
                                                              Radius.circular(
                                                                  15),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  15))),
                                              width: 160,
                                              child: Center(
                                                child: Text(
                                                  "Rex",
                                                  style: TextStyle(
                                                      decoration: TextDecoration
                                                          .underline,
                                                      decorationColor:
                                                          Colors.green,
                                                      decorationThickness: 2,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Stack(
                                      children: [
                                        widget.petimage != null
                                            ? Container(
                                                margin: EdgeInsets.only(
                                                    left: 13,
                                                    top: 10,
                                                    bottom: 10),
                                                width: 160,
                                                height: 175,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: FileImage(
                                                            widget.petimage),
                                                        fit: BoxFit.cover),
                                                    border: Border.all(
                                                        width: 2,
                                                        color: Colors.black),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                15))),
                                              )
                                            : Container(),
                                        Positioned(
                                          bottom: 11,
                                          right: 1,
                                          left: 15,
                                          child: Center(
                                            child: Container(
                                              height: 35,
                                              decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black26,
                                                    )
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          bottomRight:
                                                              Radius.circular(
                                                                  15),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  15))),
                                              width: 160,
                                              child: Center(
                                                child: Text(
                                                  "${widget.petName}",
                                                  style: TextStyle(
                                                      decoration: TextDecoration
                                                          .underline,
                                                      decorationColor:
                                                          Colors.green,
                                                      decorationThickness: 2,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),

                                    // animal(
                                    //   nameAnimal: "REX",
                                    // image: "images/pro2.jpg"),
                                    // animal(
                                    //     nameAnimal: "REX",
                                    //     image: "images/pro3.jpg"),
                                    // animal(
                                    //     nameAnimal: "REX",
                                    //     image: "images/pro2.jpg"),
                                    // animal(
                                    //     nameAnimal: "REX",
                                    //     image: "images/pro3.jpg"),
                                    // widget.petimage!=null?
                                    // animal(
                                    //     nameAnimal: "kolo",
                                    //     image: FileImage(widget.petimage)
                                    // ):Container(),
                                    SizedBox(
                                      width: 12,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
