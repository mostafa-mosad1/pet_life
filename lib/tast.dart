import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_life/pages/shop/accessories.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import 'components.dart';

class tast extends StatefulWidget {
  const tast({Key? key}) : super(key: key);

  @override
  State<tast> createState() => _tastState();
}

class _tastState extends State<tast> {
  bool icon = true;
  var x;
  TextEditingController emailController =TextEditingController();
  DateRangePickerController date =DateRangePickerController();
  TextEditingController date1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    bool fav = false;
    return Scaffold(
      appBar: AppBar(),
      body:   Column(children: [
        Container(
          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                  children: [
                SizedBox(width: 5,),
                Container( width: 120.w,height: 150,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage("images/cat.jpg"),
                        fit: BoxFit.cover,

                      )
                  ),
                )
              ]),
              SizedBox(
                width: 6,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 150,
                    child: Text(
                      "cat nnnnnnnnnnnnnnnnnnnnnnnnnn",
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    width: 150,
                    child: Text(
                      "250 EL",
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            x = x - 1;
                          });
                        },
                        icon: Icon(
                          Icons.indeterminate_check_box,
                          size: 20,
                        ),
                        color: Colors.orangeAccent,
                      ),
                      Text("$x"),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            x = x + 1;
                          });
                        },
                        icon: Icon(
                          Icons.add_box,
                          size: 20,
                        ),
                        color: Colors.orangeAccent,
                      )
                    ],
                  ),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.circular(30)),
                        color: Colors.white,
                      ),
                      child: MaterialButton(
                          onPressed: () {},
                          child: Text(
                            "   remove",
                            style: TextStyle(
                                color: Colors.red, fontSize: 15),
                          )))
                ],
              ),
            ],
          ),
        ),
      ],)
    );
  }
  view(BuildContext context){
    showModalBottomSheet(context: context,
        builder: (context)=> Wrap(
          children: [
            InkWell( onTap: () => Navigator.of(context).push(MaterialPageRoute(builder:(c)=> accessories())),
              child: ListTile(
                leading: Icon(Icons.pets_outlined),
                title: Text("Cat"),
              ),
            ),
            InkWell(
              child: ListTile(
                leading: Icon(Icons.pets_outlined),
                title: Text("Dog"),
              ),
            ),
            InkWell(
              child: ListTile(
                leading: Icon(Icons.pets_outlined),
                title: Text("Fish"),
              ),
            ),
            InkWell(
              child: ListTile(
                leading: Icon(Icons.pets_outlined),
                title: Text("Bird"),
              ),
            ),
            InkWell(
              child: ListTile(
                leading: Icon(Icons.pets_outlined),
                title: Text("Hamster"),
              ),
            ),

          ],
        ));
  }
}
//SfDateRangePicker(
//         view: DateRangePickerView.month,
//         monthViewSettings: DateRangePickerMonthViewSettings(),
//         selectionMode: DateRangePickerSelectionMode.multiRange,
//         showActionButtons: true,
//         controller: date,
//
//         startRangeSelectionColor:Colors.blueAccent ,
//         endRangeSelectionColor: Colors.redAccent,
//         onSubmit: (val){
//           print(val);
//           // print(date);
//         },
//         onCancel: (){
//           date.selectedRange = null;
//         },
//       )



