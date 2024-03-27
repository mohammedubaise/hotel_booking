import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_booking/color_page.dart';
import 'package:hotel_booking/icon.dart';
import 'package:hotel_booking/new_password.dart';

import 'main.dart';

class security extends StatefulWidget {
  const security({super.key});

  @override
  State<security> createState() => _securityState();
}

class _securityState extends State<security> {
  bool toggle1 = false;
  bool toggle2 = false;
  bool toggle3 = false;
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
        title: Text("Security",
          style: TextStyle(
              fontSize: w*0.07,
              fontWeight: FontWeight.w700,
              color: colorPage.thirdColor
          ),),
      ),
      body: Padding(
        padding: EdgeInsets.all(w*0.05),
        child: Column(
          children: [
            Container(
              height: w*0.5,
              width: w*1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Face ID",
                        style: TextStyle(
                            fontSize: w*0.042,
                            fontWeight: FontWeight.w600
                        ),),
                      Stack(
                          children: [
                            InkWell(
                              onTap: () {
                                toggle1 = !toggle1;
                                setState(() {});
                              },
                              child: Container(
                                height: w* 0.06,
                                width: w* 0.12,
                                decoration: BoxDecoration(
                                    color: toggle1 ? colorPage.secondaryColor : colorPage.eightColor,
                                    borderRadius: BorderRadius.circular(w* 0.05)),
                              ),
                            ),
                            AnimatedPositioned(
                              curve: Curves.easeIn,
                              duration: Duration(
                                milliseconds: 200,
                              ),
                              left: toggle1 ? w* 0.06 : w* 0.01,
                              right: toggle1 ? w* 0.01 : w* 0.06,
                              child: InkWell(
                                onTap: () {
                                  toggle1 = !toggle1;
                                  setState(() {});
                                },
                                child: AnimatedContainer(
                                  curve: Curves.easeIn,
                                  duration: Duration(
                                    milliseconds: 200,
                                  ),
                                  height: w* 0.06,
                                  width: w* 0.06,
                                  decoration: BoxDecoration(
                                      color: Colors.white, shape: BoxShape.circle),
                                ),
                              ),
                            ),

                          ]),

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Remember me",
                        style: TextStyle(
                            fontSize: w*0.042,
                            fontWeight: FontWeight.w600
                        ),),
                      Stack(
                          children: [
                            InkWell(
                              onTap: () {
                                toggle2 = !toggle2;
                                setState(() {});
                              },
                              child: Container(
                                height: w* 0.06,
                                width: w* 0.12,
                                decoration: BoxDecoration(
                                    color: toggle2 ? colorPage.secondaryColor : colorPage.eightColor,
                                    borderRadius: BorderRadius.circular(w* 0.05)),
                              ),
                            ),
                            AnimatedPositioned(
                              curve: Curves.easeIn,
                              duration: Duration(
                                milliseconds: 200,
                              ),
                              left: toggle2 ? w* 0.06 : w* 0.01,
                              right: toggle2 ? w* 0.01 : w* 0.06,
                              child: InkWell(
                                onTap: () {
                                  toggle2 = !toggle2;
                                  setState(() {});
                                },
                                child: AnimatedContainer(
                                  curve: Curves.easeIn,
                                  duration: Duration(
                                    milliseconds: 200,
                                  ),
                                  height: w* 0.06,
                                  width: w* 0.06,
                                  decoration: BoxDecoration(
                                      color: Colors.white, shape: BoxShape.circle),
                                ),
                              ),
                            ),

                          ]),

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Touch ID",
                        style: TextStyle(
                            fontSize: w*0.042,
                            fontWeight: FontWeight.w600
                        ),),
                      Stack(
                          children: [
                            InkWell(
                              onTap: () {
                                toggle3 = !toggle3;
                                setState(() {});
                              },
                              child: Container(
                                height: w* 0.06,
                                width: w* 0.12,
                                decoration: BoxDecoration(
                                    color: toggle3 ? colorPage.secondaryColor : colorPage.eightColor,
                                    borderRadius: BorderRadius.circular(w* 0.05)),
                              ),
                            ),
                            AnimatedPositioned(
                              curve: Curves.easeIn,
                              duration: Duration(
                                milliseconds: 200,
                              ),
                              left: toggle3 ? w* 0.06 : w* 0.01,
                              right: toggle3 ? w* 0.01 : w* 0.06,
                              child: InkWell(
                                onTap: () {
                                  toggle3 = !toggle3;
                                  setState(() {});
                                },
                                child: AnimatedContainer(
                                  curve: Curves.easeIn,
                                  duration: Duration(
                                    milliseconds: 200,
                                  ),
                                  height: w* 0.06,
                                  width: w* 0.06,
                                  decoration: BoxDecoration(
                                      color: Colors.white, shape: BoxShape.circle),
                                ),
                              ),
                            ),

                          ]),

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Google Authenticator",
                        style: TextStyle(
                            fontSize: w*0.042,
                            fontWeight: FontWeight.w600
                        ),),
                    SvgPicture.asset(icon.rightArrow)

                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: w*0.10,),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => newPassword(),));
              },
              child: Container(
                margin: EdgeInsets.only(bottom: w*0.03),
                height: w*0.15,
                width: w*0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(w*0.15),
                  color: colorPage.tenthColor,

                ),
                child: Center(
                  child: Text(
                    "Change Password",
                    style: TextStyle(
                      color: colorPage.secondaryColor,
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
