import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_booking/color_page.dart';
import 'package:hotel_booking/icon.dart';
import 'package:hotel_booking/image_page.dart';
import 'package:hotel_booking/new_password.dart';
import 'package:pinput/pinput.dart';
import 'package:timer_count_down/timer_count_down.dart';

import 'main.dart';

class pinput extends StatefulWidget {
  const pinput({super.key});

  @override
  State<pinput> createState() => _pinputState();
}

class _pinputState extends State<pinput> {
  @override
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
    Center(child: Image(image: AssetImage(imagePage.protect))),

    Text("Code has been sent to +234111******99",
    style: TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: w*0.04
    ),
    ),
      FractionallySizedBox(
        child: Pinput(
   closeKeyboardWhenCompleted: true,
        )

      ),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Resend code in "),
            Countdown(
              seconds: 60,
              build: (p0, p1) {
                return Text("$p1");
              },),
            Text("s"),
          ],
      ),
      SizedBox(height: w*0.3,),
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
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => newPassword(),));
            },
            child: Center(
              child: Text(
                "Verify",
                style: TextStyle(
                  color: colorPage.firstColor,
                  fontWeight: FontWeight.w600,
                  fontSize: w*0.045,
                ),
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
