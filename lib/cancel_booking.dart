import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_booking/bookingPage.dart';
import 'package:hotel_booking/color_page.dart';
import 'package:hotel_booking/icon.dart';
import 'package:hotel_booking/image_page.dart';

import 'main.dart';

class cancelBooking extends StatefulWidget {
  const cancelBooking({super.key});

  @override
  State<cancelBooking> createState() => _cancelBookingState();
}

class _cancelBookingState extends State<cancelBooking> {
  String select="m";
  @override
  Widget build(BuildContext context) {
    return Scaffold(

          backgroundColor: colorPage.firstColor,
          bottomNavigationBar:  Container(
            height: w*0.23,
            width: w*0.9,
            child: Column(
              children: [
                Container(
                  height: w*0.15,
                  width: w*0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(w*0.15),
                    color: colorPage.secondaryColor,

                  ),
                  child: InkWell(
                    onTap:
                        () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => bookingPage(),));
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
          appBar: AppBar(
            elevation: 0,
            backgroundColor: colorPage.firstColor,
            leading: InkWell(
                onTap:() {
                  Navigator.pop(context);
                },
                child: Center(child: SvgPicture.asset(icon.arrow,height: w*0.09,width: 0.09,))),
            title: Text("Cancel Hotel Booking",
              style: TextStyle(
                  fontSize: w*0.06,
                  fontWeight: FontWeight.w700,
                  color: colorPage.thirdColor
              ),),

          ),
          body: Padding(
            padding:  EdgeInsets.all(w*0.04),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [

                    Text("Please select a payment refund method (only 80% will be refunded)",
                      style: TextStyle(
                          fontSize: w*0.045,
                          fontWeight: FontWeight.w400
                      ),),

                Container(
                  height: w*0.8,
                  width: w*1,
                  color: colorPage.tenthColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: w*0.17,
                        width: w*0.8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(w*0.03),
                          color: colorPage.firstColor,
                        ),
                        child: Padding(
                          padding:  EdgeInsets.only(left: w*0.02),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image(image: AssetImage(icon.payPal)),
                                  SizedBox(width: w*0.02,),
                                  Text("Paypal",
                                    style: TextStyle(
                                      fontSize: w*0.04,
                                      fontWeight: FontWeight.w600,
                                    ),),
                                ],
                              ),

                              Radio(
                                value: "w",
                                groupValue: select,
                                activeColor: colorPage.secondaryColor,
                                fillColor: MaterialStatePropertyAll(colorPage.secondaryColor),
                                onChanged: (value) {
                                  setState(() {
                                    select=value!;
                                  });
                                },)

                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: w*0.17,
                        width: w*0.8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(w*0.03),
                          color: colorPage.firstColor,
                        ),
                        child: Padding(
                          padding:EdgeInsets.only(left: w*0.02),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      height: w*0.08,
                                      width: w*0.08,
                                      child: SvgPicture.asset(imagePage.google)),
                                  SizedBox(width: w*0.02,),
                                  Text("Google Pay",
                                    style: TextStyle(
                                      fontSize: w*0.04,
                                      fontWeight: FontWeight.w600,
                                    ),),
                                ],
                              ),

                              Radio(
                                value: "g",
                                groupValue: select,
                                activeColor: colorPage.secondaryColor,
                                fillColor: MaterialStatePropertyAll(colorPage.secondaryColor),
                                onChanged: (value) {
                                  setState(() {
                                    select=value!;
                                  });
                                },)

                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: w*0.17,
                        width: w*0.8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(w*0.03),
                          color: colorPage.firstColor,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: w*0.02),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      height: w*0.08,
                                      width: w*0.08,
                                      child: SvgPicture.asset(imagePage.apple)),
                                  SizedBox(width: w*0.02,),
                                  Text("Paypal",
                                    style: TextStyle(
                                      fontSize: w*0.04,
                                      fontWeight: FontWeight.w600,
                                    ),),
                                ],
                              ),

                              Radio(
                                value: "s",
                                groupValue: select,
                                activeColor: colorPage.secondaryColor,
                                fillColor: MaterialStatePropertyAll(colorPage.secondaryColor),
                                onChanged: (value) {
                                  setState(() {
                                    select=value!;
                                  });
                                },)

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: w*0.4,
                  width: w*1,
                  color: colorPage.tenthColor,
                  child: Padding(
                    padding: EdgeInsets.only(left:w*0.06),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Pay with Debit/Credit Card",
                            style: TextStyle(
                              fontSize: w*0.04,
                              fontWeight: FontWeight.w600,
                            )),
                        Container(
                          height: w*0.17,
                          width: w*0.8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(w*0.03),
                            color: colorPage.firstColor,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: w*0.02),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        height: w*0.08,
                                        width: w*0.08,
                                        child: SvgPicture.asset(icon.banklogo)),
                                    SizedBox(width: w*0.02,),
                                    Text("**** **** **** ****4679",
                                      style: TextStyle(
                                        fontSize: w*0.04,
                                        fontWeight: FontWeight.w600,
                                      ),),
                                  ],
                                ),

                                Radio(
                                  value: "n",
                                  groupValue: select,
                                  activeColor: colorPage.secondaryColor,
                                  fillColor: MaterialStatePropertyAll(colorPage.secondaryColor),
                                  onChanged: (value) {
                                    setState(() {
                                      select=value!;
                                    });
                                  },)

                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        );

  }
}
