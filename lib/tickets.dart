import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_booking/color_page.dart';
import 'package:hotel_booking/icon.dart';
import 'package:hotel_booking/image_page.dart';

import 'main.dart';

class tickets extends StatefulWidget {
  const tickets({super.key});

  @override
  State<tickets> createState() => _ticketsState();
}

class _ticketsState extends State<tickets> {
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
        title: Text("Ticket",
          style: TextStyle(
              fontSize: w*0.06,
              fontWeight: FontWeight.w700,
              color: colorPage.thirdColor
          ),),

      ),
      body: Column(
        children: [
          Container(
            width: w*1,
            height: h*0.78,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(imagePage.background))
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text("Intercontinental Hotel",
                    style: TextStyle(
                      fontSize: w*0.055,
                      fontWeight: FontWeight.w600,
                    ),
                      ),
                    SizedBox(height: w*0.02,),
                    Image(image: AssetImage(imagePage.qrCode)),
                  ],
                ),


                Container(
                  height: w*0.5,
                  width: w*0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Name",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: w*0.04,
                                    color: colorPage.sixthColor
                                ),),
                              Text("Kezia Williams",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: w*0.04,
                                ),),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Check in",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: w*0.04,
                                    color: colorPage.sixthColor
                                ),),
                              Text("Dec,16,2024",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: w*0.04,
                                ),),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Hotel",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: w*0.04,
                                    color: colorPage.sixthColor
                                ),),
                              Text("Intercontinental Hotel",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: w*0.04,
                                ),),
                            ],
                          ),

                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Phone Number",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: w*0.04,
                                    color: colorPage.sixthColor
                                ),),
                              Text("+234 702 2347 642",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: w*0.04,
                                ),),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Check out",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: w*0.04,
                                    color: colorPage.sixthColor
                                ),),
                              Text("Dec,19,2024",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: w*0.04,
                                ),),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Guest",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: w*0.04,
                                    color: colorPage.sixthColor
                                ),),
                              Text("3",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: w*0.04,
                                ),),
                            ],
                          ),

                        ],
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: w*0.15,
            width: w*0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(w*0.15),
              color: colorPage.secondaryColor,

            ),
            child: Center(
              child: Text(
                "Download Ticket",
                style: TextStyle(
                  color: colorPage.firstColor,
                  fontWeight: FontWeight.w600,
                  fontSize: w*0.045,
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}
