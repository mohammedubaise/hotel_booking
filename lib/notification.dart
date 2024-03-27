import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_booking/color_page.dart';
import 'package:hotel_booking/icon.dart';

import 'main.dart';

class notification extends StatefulWidget {
  const notification({super.key});

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  bool toggle1 = false;
  bool toggle2 = false;
  bool toggle3 = false;
  bool toggle4 = false;
  bool toggle5 = false;
  bool toggle6 = false;
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
        title: Text("Notification",
          style: TextStyle(
              fontSize: w*0.07,
              fontWeight: FontWeight.w700,
              color: colorPage.thirdColor
          ),),
      ),
      body: Padding(
        padding: EdgeInsets.all(w*0.05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: w*0.8,
              width: w*1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("General Notification",
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
                      Text("Sound",
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
                      Text("Vibrate",
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
                      Text("App Updates",
                        style: TextStyle(
                            fontSize: w*0.042,
                            fontWeight: FontWeight.w600
                        ),),
                      Stack(
                          children: [
                            InkWell(
                              onTap: () {
                                toggle4 = !toggle4;
                                setState(() {});
                              },
                              child: Container(
                                height: w* 0.06,
                                width: w* 0.12,
                                decoration: BoxDecoration(
                                    color: toggle4 ? colorPage.secondaryColor : colorPage.eightColor,
                                    borderRadius: BorderRadius.circular(w* 0.05)),
                              ),
                            ),
                            AnimatedPositioned(
                              curve: Curves.easeIn,
                              duration: Duration(
                                milliseconds: 200,
                              ),
                              left: toggle4 ? w* 0.06 : w* 0.01,
                              right: toggle4 ? w* 0.01 : w* 0.06,
                              child: InkWell(
                                onTap: () {
                                  toggle4 = !toggle4;
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
                      Text("New Service Available",
                        style: TextStyle(
                            fontSize: w*0.042,
                            fontWeight: FontWeight.w600
                        ),),
                      Stack(
                          children: [
                            InkWell(
                              onTap: () {
                                toggle5 = !toggle5;
                                setState(() {});
                              },
                              child: Container(
                                height: w* 0.06,
                                width: w* 0.12,
                                decoration: BoxDecoration(
                                    color: toggle5 ? colorPage.secondaryColor : colorPage.eightColor,
                                    borderRadius: BorderRadius.circular(w* 0.05)),
                              ),
                            ),
                            AnimatedPositioned(
                              curve: Curves.easeIn,
                              duration: Duration(
                                milliseconds: 200,
                              ),
                              left: toggle5 ? w* 0.06 : w* 0.01,
                              right: toggle5 ? w* 0.01 : w* 0.06,
                              child: InkWell(
                                onTap: () {
                                  toggle5 = !toggle5;
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
                      Text("New tips available",
                        style: TextStyle(
                            fontSize: w*0.042,
                            fontWeight: FontWeight.w600
                        ),),
                      Stack(
                          children: [
                            InkWell(
                              onTap: () {
                                toggle6 = !toggle6;
                                setState(() {});
                              },
                              child: Container(
                                height: w* 0.06,
                                width: w* 0.12,
                                decoration: BoxDecoration(
                                    color: toggle6 ? colorPage.secondaryColor : colorPage.eightColor,
                                    borderRadius: BorderRadius.circular(w* 0.05)),
                              ),
                            ),
                            AnimatedPositioned(
                              curve: Curves.easeIn,
                              duration: Duration(
                                milliseconds: 200,
                              ),
                              left: toggle6 ? w* 0.06 : w* 0.01,
                              right: toggle6 ? w* 0.01 : w* 0.06,
                              child: InkWell(
                                onTap: () {
                                  toggle6 = !toggle6;
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
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.only(bottom: w*0.03),
                height: w*0.15,
                width: w*0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(w*0.15),
                  color: colorPage.secondaryColor,

                ),
                child: Center(
                  child: Text(
                    "Update",
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
