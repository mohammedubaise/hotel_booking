
import 'package:flutter/material.dart';
import 'package:hotel_booking/color_page.dart';
import 'package:hotel_booking/image_page.dart';
import 'package:hotel_booking/second_page.dart';

import 'main.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(
      seconds: 4
    )).then((value) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => secondPage(),)));
    super.initState();
  }
 
  Widget build(BuildContext context) {
    return Scaffold(
body: Container(
  height: h*1,
  width: w*1,
  decoration: BoxDecoration(
    image: DecorationImage(image: AssetImage(imagePage.car),fit: BoxFit.fill)
  ),
  padding: EdgeInsets.only(left: w*0.09,bottom: h*0.08),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.end,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("Welcome to",
        style:TextStyle(
          color: colorPage.firstColor,
fontWeight: FontWeight.w700,
          fontSize: w*0.12,
        ) ,),
      Text("Bolu",
      style: TextStyle(
        fontSize: w*0.25,
        fontWeight: FontWeight.w700,
        color: colorPage.secondaryColor,
      ),),
      SizedBox(height: w*0.08,),
      Text("The best hotel booking in the century to accompany your vaccation",
      style: TextStyle(
        color: colorPage.firstColor,
        fontSize: w*0.045,
        fontWeight: FontWeight.w600,
      ),),

    ],

  ),

),

      
    );
  }
}
