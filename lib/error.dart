import 'package:flutter/material.dart';

class error extends StatefulWidget {
  const error({Key? key}) : super(key: key);

  @override
  State<error> createState() => _errorState();
}

class _errorState extends State<error> {
  var type;
  var gender;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        color: Colors.grey,
        width: double.infinity,
        height: double.infinity,
        child: Row(
          children: [
            Container(
              width: 180,
              color: Colors.white,
              margin: EdgeInsets.only(right: 5, left: 10),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  iconSize: 35,
                  hint: Text(
                    "   Type",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                  items: ["Accessories", "Pet", "Food", "Treatment"]
                      .map((e) => DropdownMenuItem(
                            child: Center(
                              child: Text(
                                "   $e",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 23,
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
              width: 180,
              color: Colors.white,
              margin: EdgeInsets.only(right: 10, left: 5),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  iconSize: 35,
                  hint: Text(
                    "   Gender",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                  items: ["Hamster", "Cat", "Dog", "Bird", "Fish"]
                      .map((f) => DropdownMenuItem(
                            child: Center(
                              child: Text(
                                "   $f",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 23,
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
      ),
    ));
  }
}
