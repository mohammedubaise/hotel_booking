import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_booking/color_page.dart';
import 'package:hotel_booking/icon.dart';
import 'package:hotel_booking/image_page.dart';
import 'package:hotel_booking/pinput.dart';

import 'main.dart';

class password extends StatefulWidget {
  const password({super.key});

  @override
  State<password> createState() => _passwordState();
}
class _passwordState extends State<password> {
  @override
  bool color1=false;
  bool color2=false;
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: colorPage.firstColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorPage.firstColor,
        leading: InkWell(
            onTap:() {
              Navigator.pop(context);
            },
            child: Center(child: SvgPicture.asset(icon.arrow,height: w*0.09,width: 0.09,))),
        title: Text("Forgot password",
          style: TextStyle(
              fontSize: w*0.07,
              fontWeight: FontWeight.w700,
              color: colorPage.thirdColor
          ),),
      ),
      body: Padding(
        padding: EdgeInsets.all(w*0.03),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(child: Image(image: AssetImage(imagePage.lock))),

            Text("Select which contact details should we use to reset your password",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: w*0.04
              ),
            ),
            InkWell(
              onTap: () {
                color1=true;
                color2=false;
                setState(() {

                });
              },
              child: Container(
                height: w*0.3,
                width:w*1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(w*0.03),
                  border: Border.all(color: color1==true?colorPage.secondaryColor:colorPage.secondaryColor,width:color1==true?w*0.006:w*0.002),
                ),
                child: Row(

                  children: [
                    SizedBox(width: w*0.03,),
                    CircleAvatar(backgroundColor: colorPage.tenthColor,
                    radius: w*0.1,

                    child: SvgPicture.asset(icon.notification)),
                    SizedBox(width: w*0.03,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("via SMS:",
                        style: TextStyle(
                          color: colorPage.elevenColor,
                          fontSize: w*0.035,
                          fontWeight: FontWeight.w400,
                        )),
                        Text("+234111*******99",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                            fontSize: w*0.035,
                          color: colorPage.thirdColor,
                        ),)
                      ],
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                color1=false;
                color2=true;
                setState(() {

                });
              },
              child: Container(
                height: w*0.3,
                width:w*1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(w*0.03),
                  border: Border.all(color: color2==true?colorPage.secondaryColor:colorPage.secondaryColor,width:color2==true?w*0.006:w*0.002),
                ),
          child: Row(

                  children: [
    SizedBox(width: w*0.03,),
    CircleAvatar(backgroundColor: colorPage.tenthColor,
    radius: w*0.1,

    child: SvgPicture.asset(icon.message)),
    SizedBox(width: w*0.03,),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text("via Email:",
        style: TextStyle(
          color: colorPage.elevenColor,
          fontSize: w*0.035,
          fontWeight: FontWeight.w400,
        )),
    Text("kez***9@your domain.com",
      style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: w*0.035,
        color: colorPage.thirdColor,
      ),),
    ],
    ),
    ],
    ),
    ),
            ),
            Container(
              height: w*0.15,
              width: w*1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(w*0.15),
                color: colorPage.secondaryColor,

              ),
              child: InkWell(
                onTap:
                    () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => pinput(),));
                },
                child: Center(
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      color: colorPage.firstColor,
                      fontWeight: FontWeight.w600,
                      fontSize: w*0.045,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
