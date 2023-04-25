import 'dart:io';

import 'package:fff/components.dart';
import 'package:fff/pages/profile/edit_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class add_animal extends StatefulWidget {
  const add_animal({Key? key}) : super(key: key);

  @override
  State<add_animal> createState() => _add_animalState();
}

class _add_animalState extends State<add_animal> {
  var dateController = TextEditingController();
  TextEditingController date1 = TextEditingController();
  TextEditingController petName1 = TextEditingController();
  var imagetwo;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage("images/pro2.jpg"),
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),

        Positioned(
            top: 170,
            right: 120,
            child: Center(
              child: Text(
                "Add Pet Photo",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            )),
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Center(
                  child: MaterialButton(onPressed:()

                  async {
                    var pickedImage =
                    await ImagePicker().pickImage(
                        source:
                        ImageSource.gallery);
                    if (pickedImage != null) {
                      setState(() {
                        imagetwo = File(pickedImage.path);
                      });

                    }
                  },
                    child: Container(
                width: 340,
                height: 200,
                decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(25)),

              ),
                  )),
              SizedBox(
                height: 17,
              ),
              defultForm(
                Controller: petName1 ,
                  hintText: "Pet Name",
                  background: Colors.redAccent,
                  color: Colors.white),
              SizedBox(
                height: 12,
              ),
              Text("Recommend time of vaccation",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 27,
                      color: Colors.white)),
              SizedBox(
                height: 12,
              ),
              defultForm(
                keyboard:  TextInputType.number,
                  Controller: date1 ,
                  hintText: "Recommend of vaccation ",
                  background: Colors.redAccent,
                  color: Colors.white),
              SizedBox(height: 20,),
              // defultForm(
              //     hintText: "enter date",
              //     Controller: date1,
              //     color: Colors.white,
              //     ontap: () async {
              //       DateTime? pickeddate = await showDatePicker(
              //               context: context,
              //               initialDate: DateTime.now(),
              //               firstDate: DateTime(2000),
              //               lastDate: DateTime(2101))
              //           .then((value) {
              //         date1.text = DateFormat().add_d().format(value!);
              //       });
              //     }),SizedBox(height: 70,),
              Container(
                width: 170,
                decoration: BoxDecoration(color: Color(0xff269A41),borderRadius: BorderRadius
                .all(Radius.circular(30))),
                child: MaterialButton(onPressed: (){
                  print(date1.text);
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>
                 edit_profile(petimage: imagetwo,petName: petName1.text,time: date1,)
                 ));
                },child: Text("Add",
                style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),
                ),),
              )
              
            ],
            
          ),
        )
      ],
    );
  }
}
