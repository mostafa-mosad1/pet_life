import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DogData extends StatefulWidget {
  const DogData({Key? key, this.datadog}) : super(key: key);

  final datadog;

  @override
  State<DogData> createState() => _DogDataState();
}

class _DogDataState extends State<DogData> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.grey[400],
        ),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 540.h,
                    decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25))),
                  ),
                  Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 350.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(25),
                                    bottomRight: Radius.circular(25)),
                                image: DecorationImage(
                                    image: AssetImage(widget.datadog['image']),fit: BoxFit.fill)),
                          ),
                          Container(
                            width: 35,
                            height: 35,
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
                                  size: 25,
                                )),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h,),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "  ${widget.datadog['type']}",
                          style: TextStyle(
                              fontSize: 30.sp, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "${widget.datadog['sub']}",
                          style: TextStyle(
                              fontSize: 30.sp, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
