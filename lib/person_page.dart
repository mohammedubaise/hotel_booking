import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_booking/Security.dart';
import 'package:hotel_booking/color_page.dart';
import 'package:hotel_booking/edit_profile.dart';
import 'package:hotel_booking/icon.dart';
import 'package:hotel_booking/image_page.dart';
import 'package:hotel_booking/loging_page.dart';
import 'package:hotel_booking/notification.dart';
import 'package:image_picker/image_picker.dart';

import 'main.dart';

class personPage extends StatefulWidget {
  final String name;
  final String email;
  const personPage({super.key,
  required this.name,
  required this.email});

  @override
  State<personPage> createState() => _personPageState();
}

class _personPageState extends State<personPage> {
  bool toggle = false;
  bool cancelbooking=false;
  bool viewticket=false;
  var file;

  pickFile(ImageSource) async {
    final imgFile = await ImagePicker.platform.pickImage(source: ImageSource);
    file = File(imgFile!.path);
    if (mounted) {
      setState(() {
        file = File(imgFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPage.firstColor,
        elevation: 0,
        leading: SvgPicture.asset(imagePage.bollu),
        title: Text(
          "Profile",
          style: TextStyle(
            fontSize: w * 0.080,
            fontWeight: FontWeight.w700,
            color: colorPage.thirdColor,
          ),
        ),
        actions: [
          SvgPicture.asset(icon.more),
          SizedBox(
            width: w * 0.05,
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                  height: w*0.45,
                  width: w*0.4,

                ),
              ),
              file != null
                  ? Center(
                    child: CircleAvatar(
                radius: w*0.2,
                backgroundImage: FileImage(file),
              ),
                  )
                  : Center(
                    child: CircleAvatar(
                radius: w*0.2,
                backgroundImage: AssetImage(imagePage.profilePic),
              ),
                  ),
              Positioned(
                top: w*0.31,
                left: w*0.61,
                child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      showDragHandle: true,
                      backgroundColor: colorPage.firstColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(w * 0.09),
                              topLeft: Radius.circular(w * 0.09))),
                      context: context,
                      builder: (context) {
                        return Container(
                          height: w * 0.25,
                          width: w * 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Choose A File From?",
                              style: TextStyle(
                                fontSize: w*0.04,
                                fontWeight: FontWeight.w900
                              )),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                      pickFile(ImageSource.camera);
                                    },
                                    child: Container(
                                      height: w * 0.08,
                                      width: w * 0.2,
                                      decoration: BoxDecoration(
                                          color: colorPage.secondaryColor,
                                          borderRadius:
                                          BorderRadius.circular(w * 0.03)),
                                      child: Icon(Icons.camera_alt_outlined,
                                          color: colorPage.firstColor),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                      pickFile(ImageSource.gallery);
                                    },
                                    child: Container(
                                      height: w * 0.08,
                                      width: w * 0.2,
                                      decoration: BoxDecoration(
                                          color: colorPage.secondaryColor,
                                          borderRadius:
                                          BorderRadius.circular(w * 0.03)),
                                      child: Icon(Icons.image_outlined,color: colorPage.firstColor),
                                    ),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    width: w*0.08,
                    height: w*0.08,
                    decoration: BoxDecoration(
                      color: colorPage.secondaryColor,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(w*0.03), topRight: Radius.circular(w*0.03), bottomRight: Radius.circular(w*0.03))
                    ),
                    child: Icon(
                      Icons.edit,
                      color: colorPage.firstColor,
                    ),
                  ),
                ),
              )
            ],
          ),

          Column(
            children: [
              Text(
                "${widget.name}",
                style: TextStyle(
                  fontSize: w * 0.07,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "${widget.email}",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: w * 0.04,
                    color: colorPage.eighteen),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: w*0.02,
            right: w*0.04,
            top: w*0.12),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => editProfile(),));
                  },
                  child: Row(
                    children: [
                      Container(
                        width: w*0.15,
                          height: w*0.13,
                          child: Icon(Icons.person_2_outlined)),
                      Text("Edit Profile",
                      style: TextStyle(
                        fontSize: w*0.042,
                        fontWeight: FontWeight.w600
                      ),)
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: w*0.15,
                        height: w*0.13,
                        child: Center(
                          child: Container(
                            width: w*0.06,
                              height: w*0.06,
                              child: SvgPicture.asset(icon.wallet)),
                        )),
                    Text("Payment",
                    style: TextStyle(
                      fontSize: w*0.042,
                      fontWeight: FontWeight.w600
                    ),)
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => notification(),));
                  },
                  child: Row(
                    children: [
                      Container(
                        width: w*0.15,
                          height: w*0.13,
                          child: Icon(Icons.notifications_outlined)),
                      Text("Notification",
                      style: TextStyle(
                        fontSize: w*0.042,
                        fontWeight: FontWeight.w600
                      ),)
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => security(),));
                  },
                  child: Row(
                    children: [
                      Container(
                        width: w*0.15,
                          height: w*0.13,
                          child:Center(
                            child: Container(
                                width: w*0.06,
                                height: w*0.06,
                                child: SvgPicture.asset(icon.secuirity)),
                          )),
                      Text("Security",
                      style: TextStyle(
                        fontSize: w*0.042,
                        fontWeight: FontWeight.w600
                      ),)
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: w*0.15,
                        height: w*0.13,
                        child: Center(
                          child: Container(
                              width: w*0.06,
                              height: w*0.06,
                              child: SvgPicture.asset(icon.help)),
                        )),
                    Text("Help",
                    style: TextStyle(
                      fontSize: w*0.042,
                      fontWeight: FontWeight.w600
                    ),)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: w*0.15,
                            height: w*0.13,
                            child: Icon(Icons.visibility_outlined)),
                        Text("Dark Theme",
                          style: TextStyle(
                              fontSize: w*0.042,
                              fontWeight: FontWeight.w600
                          ),),
    ],
                         ),
                         Stack(
                             children: [
                          InkWell(
                            onTap: () {
                              toggle = !toggle;
                              setState(() {});
                            },
                            child: Container(
                              height: w* 0.06,
                              width: w* 0.12,
                              decoration: BoxDecoration(
                                  color: toggle ? colorPage.secondaryColor : colorPage.eightColor,
                                  borderRadius: BorderRadius.circular(w* 0.05)),
                            ),
                          ),
                          AnimatedPositioned(
                            curve: Curves.easeIn,
                            duration: Duration(
                              milliseconds: 200,
                            ),
                            left: toggle ? w* 0.06 : w* 0.01,
                            right: toggle ? w* 0.01 : w* 0.06,
                            child: InkWell(
                              onTap: () {
                                toggle = !toggle;
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
                InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        showDragHandle: true,
                        backgroundColor: colorPage.firstColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(topRight:Radius.circular(w*0.08),topLeft: Radius.circular(w*0.08))
                        ),
                        context: context,
                        builder: (context) {
                          return Container(
                            height: w*0.6,
                            width: w*1,
                            child: Padding(
                              padding:EdgeInsets.only(left: w*0.07,
                                  right: w*0.04),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Cancel Booking",
                                    style: TextStyle(
                                      fontSize: w*0.055,
                                      fontWeight: FontWeight.w700,
                                      color: colorPage.seventeen,
                                    ),),
                                  Divider(
                                    // height: w*0.04,
                                    thickness: w*0.005,
                                    color: colorPage.twelve,
                                    // indent: w*0.05,
                                    // endIndent: w*0.06,
                                  ),
                                  Column(
                                    children: [
                                      Text("Are you sure you want to cancel your",
                                        style: TextStyle(
                                            fontSize: w*0.05,
                                            fontWeight: FontWeight.w600,
                                            color: colorPage.sixthColor
                                        ),),
                                      Text(" hotel bookings?",
                                        style: TextStyle(
                                            fontSize: w*0.05,
                                            fontWeight: FontWeight.w600,
                                            color: colorPage.sixthColor
                                        ),),
                                    ],
                                  ),
                                  SizedBox(height: w*0.02,),
                                  Column(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => loging(),));
                                        },
                                        child: Container(
                                          height: w*0.13,
                                          width: w*0.7,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(w*0.15),
                                            color: colorPage.secondaryColor,
                                            boxShadow: [
                                              BoxShadow(
                                                color: colorPage.fourthColor,
                                                spreadRadius: 0,
                                                offset: Offset(0, 4),
                                                blurRadius: 5,
                                              )
                                            ],
                                          ),
                                          child: Center(
                                            child: Text(
                                              "Yes, Logout",
                                              style: TextStyle(
                                                color: colorPage.firstColor,
                                                fontWeight: FontWeight.w600,
                                                fontSize: w*0.045,
                                              ),

                                            ),
                                          ),

                                        ),
                                      ),
                                      SizedBox(height: w*0.02,),
                                      InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          height: w*0.13,
                                          width: w*0.7,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(w*0.15),
                                            color: colorPage.tenthColor,
                                            boxShadow: [
                                              BoxShadow(
                                                color: colorPage.fourthColor,
                                                spreadRadius: 0,
                                                offset: Offset(0, 4),
                                                blurRadius: 5,
                                              )
                                            ],
                                          ),
                                          child: Center(
                                            child: Text(
                                              "Cancel",
                                              style: TextStyle(
                                                color: colorPage.secondaryColor,
                                                fontWeight: FontWeight.w600,
                                                fontSize: w*0.045,
                                              ),

                                            ),
                                          ),

                                        ),
                                      ),
                                      SizedBox(height: w*0.02,),

                                    ],
                                  ),
                                ],
                              ),
                            ),

                          );
                        },);
                      cancelbooking=true;
                      viewticket=false;


                      setState(() {

                      });
                    },
                  child: Row(
                    children: [
                      Container(
                        width: w*0.15,
                          height: w*0.13,
                          child: Center(
                            child: Container(
                                width: w*0.07,
                                height: w*0.07,
                                child: SvgPicture.asset(icon.logout)),
                          )),
                      Text("Logout",
                      style: TextStyle(
                        fontSize: w*0.042,
                        fontWeight: FontWeight.w500,
                        color: colorPage.seventeen
                      ),)
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
