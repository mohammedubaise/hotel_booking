import 'package:flutter/material.dart';
import 'package:hotel_booking/color_page.dart';
import 'package:hotel_booking/signing_page.dart';
import 'package:widget_loading/widget_loading.dart';

import 'main.dart';

class Last extends StatefulWidget {
  const Last({super.key});

  @override
  State<Last> createState() => _LastState();
}

class _LastState extends State<Last> {
  @override
  void initState() {
    Future.delayed(Duration(
        seconds: 4
    )).then((value) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => signing(),)));
    // TODO: implement initState
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPage.secondaryColor,
body: Column(
  mainAxisAlignment: MainAxisAlignment.center,

  children: [
    SizedBox(height: w*0.62,),
    Container(
      height: w*0.7,
      width: w*0.7,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/Group 84.png"))
      ),
    ),
SizedBox(height: w*0.3,),
    CircularWidgetLoading(
      dotColor: colorPage.firstColor,
      padding: EdgeInsets.all(w*0.15),
      child:  Center(child: Text('Loaded!')),
    loading: true,
    ),
    SizedBox(height:w*0.2,)
  ],
),
    );
  }
}
