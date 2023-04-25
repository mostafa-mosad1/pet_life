import 'package:fff/pages/doctorpage/doctors.dart';
import 'package:fff/pages/home.dart';
import 'package:fff/pages/shop/accessories.dart';
import 'package:fff/pages/shop/favorite.dart';
import 'package:fff/pages/shop/pet.dart';
import 'package:fff/pages/shop/shop.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import 'components.dart';

class tast extends StatefulWidget {
  const tast({Key? key}) : super(key: key);

  @override
  State<tast> createState() => _tastState();
}

class _tastState extends State<tast> {
  bool icon = true;
  DateRangePickerController date =DateRangePickerController();
  TextEditingController date1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    bool fav = false;
    return Scaffold(
      appBar: AppBar(),
      body: defultForm(hintText: "enter date", Controller: date1,ontap:() async{
        DateTime? pickeddate =await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2000), lastDate: DateTime(2101)).then((value) {date1.text = DateFormat().add_yMMMEd().format(value!);});
        // if(pickeddate != null){
        //   setState(() {
        //     date1.text =
        //   });
       // }
      }
      )
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

