import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_booking/cancel_booking.dart';
import 'package:hotel_booking/color_page.dart';
import 'package:hotel_booking/icon.dart';
import 'package:hotel_booking/image_page.dart';
import 'package:hotel_booking/tickets.dart';

import 'main.dart';

class bookingPage extends StatefulWidget {
  const bookingPage({super.key});

  @override
  State<bookingPage> createState() => _bookingPageState();
}

class _bookingPageState extends State<bookingPage> {
 bool ongoing=true;
 bool completed=false;
 bool canceled=false;
 bool cancelbooking=false;
 bool viewticket=false;
 List images=[
   "assets/images/Rectangle 57.png",
   "assets/images/Rectangle 61.png",
   "assets/images/Rectangle 65.png",
   "assets/images/Rectangle 69.png",
   "assets/images/Rectangle 73.png",
   "assets/images/Rectangle 85.png"
 ];
 List textMap=[
   {
     "text1":"Intercontinental Hotel",
     "text2":"Lagos, Nigeria",


   },
   {
     "text1":"Nevada Hotel",
     "text2":"Lagos, Nigeria",


   },
   {
     "text1":"Oriental Hotel",
     "text2":"Lagos, Nigeria",

   },

 ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: colorPage.tenthColor,
          appBar: AppBar(
            backgroundColor: colorPage.firstColor,
            elevation: 0,
            leading: SvgPicture.asset(imagePage.bollu),
            title: Text("My Booking",
              style: TextStyle(
                fontSize: w*0.080,
                fontWeight: FontWeight.w700,
                color: colorPage.thirdColor,
              ),

            ),
            actions: [
              SvgPicture.asset(icon.newsearch),
              SizedBox(width: w*0.07,),
            ],
          ),
          body:Column(
            children: [
              Container(
                height: w*0.13,
                width: w*1,
                margin: EdgeInsets.only(top: w*0.04),
                decoration: BoxDecoration(
                  color: colorPage.firstColor,
                  borderRadius: BorderRadius.circular(w*0.04),
                ),
                child: TabBar(
                    labelColor: colorPage.firstColor,
                    unselectedLabelColor: colorPage.secondaryColor,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(w*0.03),
                      color: colorPage.secondaryColor,
                    ),
                    tabs: [
                      Tab(text: "Ongoing",),
                      Tab(text: "Completed",),
                      Tab(text: "Canceled",),
                    ]),
              ),
              Expanded(
                child: TabBarView(children: [
                  Container(
                    height: h*0.9,
                    width: w*1,
                    decoration: BoxDecoration(
                      color: colorPage.tenthColor,
                    ),
                    child: Padding(
                      padding:EdgeInsets.all(w*0.03),
                      child: Column(
                        children: [
                          Container(
                            height: h*0.72,
                            width: w*1,
                            child: ListView.builder(

                              itemCount:textMap.length,
                              scrollDirection: Axis.vertical,
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  height: w*0.53,
                                  width: w*0.5,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(w*0.03),
                                      color: colorPage.firstColor
                                  ),
                                  margin: EdgeInsets.only(top: w*0.06),

                                  child: Stack(
                                    children:[
                                      Positioned(
                                        top: w*0.03,
                                        left: w*0.02,
                                        child: Container(
                                            height: w*0.25,
                                            width: w*0.23,
                                            // margin: EdgeInsets.only(top: h*0.03),
                                            decoration:BoxDecoration(
                                                borderRadius: BorderRadius.circular(w*0.08)
                                            ),
                                            child: Image(image: AssetImage(images[index]),fit: BoxFit.fill,)
                                        ),
                                      ),


                                      Positioned(
                                        top: h*0.10,
                                        left: w*0.85,
                                        child: Container(
                                          height: w*0.09,
                                          width: w*0.075,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(w*0.2),
                                          ),

                                        ),

                                      ),
                                      Positioned(
                                        left: w*0.30,
                                        top: w*0.07,
                                        child: Column(
                                          // mainAxisAlignment: MainAxisAlignment.end,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(textMap[index]["text1"],
                                              style: TextStyle(
                                                color: colorPage.thirdColor,
                                                fontSize: w*0.04,
                                                fontWeight: FontWeight.w700,
                                              ),),
                                            SizedBox(height: w*0.03,),
                                            Text(textMap[index]["text2"],
                                              style: TextStyle(
                                                  color: colorPage.thirdColor,
                                                  fontSize: w*0.04,
                                                  fontWeight: FontWeight.w500
                                              ),),
                                            SizedBox(height: w*0.01,),
                                            Container(
                                              height: w*0.06,
                                              width: w*0.19,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(w*0.02),
                                                  color: colorPage.tenthColor
                                              ),
                                              child: Center(child:
                                              Text("Paid",
                                                style: TextStyle(
                                                    color: colorPage.secondaryColor
                                                ),)),

                                            ),

                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        top: w*0.3,

                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              width: w*1,
                                              child: Divider(
                                                height: w*0.04,
                                                thickness: w*0.002,
                                                color: colorPage.twelve,
                                                indent: w*0.03,
                                                endIndent: w*0.09,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      Positioned(
                                        left: w*0.08,
                                        top: w*0.37,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
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
                                                                Text("Only 80% of the money you can refund from your payment",
                                                                  style: TextStyle(
                                                                      fontSize: w*0.032,
                                                                      fontWeight: FontWeight.w400,
                                                                      color: colorPage.sixthColor
                                                                  ),),
                                                                Text("according to our policy",
                                                                  style: TextStyle(
                                                                      fontSize: w*0.032,
                                                                      fontWeight: FontWeight.w400,
                                                                      color: colorPage.sixthColor
                                                                  ),),
                                                                SizedBox(height: w*0.05,),
                                                                Row(
                                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                  children: [
                                                                    Container(
                                                                      height: w*0.13,
                                                                      width: w*0.4,
                                                                      decoration: BoxDecoration(
                                                                        borderRadius: BorderRadius.circular(w*0.15),
                                                                        color: colorPage.tenthColor,
                                                                        boxShadow: [
                                                                          BoxShadow(
                                                                            color: colorPage.fourthColor.withOpacity(0.25),
                                                                            spreadRadius: 2,
                                                                            offset: Offset(0, 4),
                                                                            blurRadius: 4,
                                                                          )
                                                                        ],
                                                                      ),
                                                                      child: Center(
                                                                        child: InkWell(
                                                                          onTap: () {
                                                                            Navigator.pop(context);
                                                                          },
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
                                                                    InkWell(
                                                                      onTap: () {
                                                                        Navigator.push(context, MaterialPageRoute(builder: (context) => cancelBooking(),));
                                                                      },
                                                                      child: Container(
                                                                        height: w*0.13,
                                                                        width: w*0.4,
                                                                        decoration: BoxDecoration(
                                                                          borderRadius: BorderRadius.circular(w*0.15),
                                                                          color: colorPage.secondaryColor,
                                                                          boxShadow: [
                                                                            BoxShadow(
                                                                              color: colorPage.fourthColor.withOpacity(0.25),
                                                                              spreadRadius: 2,
                                                                              offset: Offset(0, 4),
                                                                              blurRadius: 4,
                                                                            )
                                                                          ],
                                                                        ),
                                                                        child: Center(
                                                                          child: Text(
                                                                            "Yes, Continue",
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
                                              child: Container(
                                                width: w*0.35,
                                                height: w*0.09,
                                                margin:EdgeInsets.only(left: w*0.02),
                                                decoration: BoxDecoration(
                                                  color:cancelbooking?colorPage.secondaryColor:colorPage.firstColor,
                                                  borderRadius: BorderRadius.circular(w*0.06),
                                                  border: Border.all(color: colorPage.secondaryColor,width:w*0.005),
                                                ),
                                                child: Center(
                                                  child: Text("Cancel Booking",
                                                    style: TextStyle(
                                                      fontSize: w*0.045,
                                                      color:cancelbooking?colorPage.firstColor:colorPage.secondaryColor,

                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: w*0.04,),
                                            InkWell(
                                              onTap: () {
                                                cancelbooking=false;
                                                viewticket=true;
                                                setState(() {

                                                });
                                              },
                                              child: InkWell(
                                                onTap: () {
                                                  Navigator.push(context, MaterialPageRoute(builder: (context) => tickets(),));
                                                },
                                                child: Container(
                                                  width: w*0.35,
                                                  height: w*0.09,
                                                  margin:EdgeInsets.only(left: w*0.02),
                                                  decoration: BoxDecoration(
                                                    color:viewticket?colorPage.secondaryColor:colorPage.firstColor,
                                                    borderRadius: BorderRadius.circular(w*0.06),
                                                    border: Border.all(color: colorPage.secondaryColor,width:w*0.005),
                                                  ),
                                                  child: Center(
                                                    child: Text("View Tickets",
                                                      style: TextStyle(
                                                        fontSize: w*0.045,
                                                        color:viewticket?colorPage.firstColor:colorPage.secondaryColor,

                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),

                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },

                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: h*0.9,
                    width: w*1,
                    decoration: BoxDecoration(
                      color: colorPage.tenthColor,
                    ),
                    child: Padding(
                      padding:EdgeInsets.all(w*0.03),
                      child: Column(
                        children: [
                          Container(
                            height: h*0.68,
                            width: w*1,
                            child: ListView.builder(

                              itemCount:textMap.length,
                              scrollDirection: Axis.vertical,
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  height: w*0.53,
                                  width: w*0.5,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(w*0.03),
                                      color: colorPage.firstColor
                                  ),
                                  margin: EdgeInsets.only(top: w*0.06),

                                  child: Stack(
                                    children:[
                                      Positioned(
                                        top: w*0.03,
                                        left: w*0.02,
                                        child: Container(
                                            height: w*0.25,
                                            width: w*0.23,
                                            // margin: EdgeInsets.only(top: h*0.03),
                                            decoration:BoxDecoration(
                                                borderRadius: BorderRadius.circular(w*0.08)
                                            ),
                                            child: Image(image: AssetImage(images[index]),fit: BoxFit.fill,)
                                        ),
                                      ),


                                      Positioned(
                                        top: h*0.10,
                                        left: w*0.85,
                                        child: Container(
                                          height: w*0.09,
                                          width: w*0.075,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(w*0.2),
                                          ),

                                        ),

                                      ),
                                      Positioned(
                                        left: w*0.30,
                                        top: w*0.07,
                                        child: Column(
                                          // mainAxisAlignment: MainAxisAlignment.end,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(textMap[index]["text1"],
                                              style: TextStyle(
                                                color: colorPage.thirdColor,
                                                fontSize: w*0.04,
                                                fontWeight: FontWeight.w700,
                                              ),),
                                            SizedBox(height: w*0.03,),
                                            Text(textMap[index]["text2"],
                                              style: TextStyle(
                                                  color: colorPage.thirdColor,
                                                  fontSize: w*0.04,
                                                  fontWeight: FontWeight.w500
                                              ),),
                                            SizedBox(height: w*0.01,),
                                            Container(
                                              height: w*0.06,
                                              width: w*0.19,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(w*0.02),
                                                  color: colorPage.tenthColor
                                              ),
                                              child: Center(child:
                                              Text("Completed",
                                                style: TextStyle(
                                                    color: colorPage.secondaryColor
                                                ),)),

                                            ),

                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        top: w*0.3,

                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              width: w*1,
                                              child: Divider(
                                                height: w*0.04,
                                                thickness: w*0.002,
                                                color: colorPage.twelve,
                                                indent: w*0.05,
                                                endIndent: w*0.10,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        top: w*0.37,
                                        left: w*0.05,
                                        right: w*0.04,
                                        child: Container(
                                          width: w*1,
                                          height: w*0.09,
                                          decoration: BoxDecoration(
                                              color: colorPage.tenthColor,
                                              borderRadius: BorderRadius.circular(w*0.03)
                                          ),
                                          child: Row(
                                            children: [
                                              SizedBox(width: w*0.05,),
                                              Container(
                                                  width: w*0.10,
                                                  height: w*0.06,
                                                  child: SvgPicture.asset(icon.tick)),
                                              Text("yay. you have completed it!",
                                                style: TextStyle(color: colorPage.secondaryColor),)
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              },

                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: h*0.9,
                    width: w*1,
                    decoration: BoxDecoration(
                      color: colorPage.tenthColor,
                    ),
                    child: Padding(
                      padding:EdgeInsets.all(w*0.03),
                      child: Column(
                        children: [
                          Container(
                            height: h*0.68,
                            width: w*1,
                            child: ListView.builder(

                              itemCount:textMap.length,
                              scrollDirection: Axis.vertical,
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  height: w*0.53,
                                  width: w*0.5,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(w*0.03),
                                      color: colorPage.firstColor
                                  ),
                                  margin: EdgeInsets.only(top: w*0.06),

                                  child: Stack(
                                    children:[
                                      Positioned(
                                        top: w*0.03,
                                        left: w*0.02,
                                        child: Container(
                                            height: w*0.25,
                                            width: w*0.23,
                                            // margin: EdgeInsets.only(top: h*0.03),
                                            decoration:BoxDecoration(
                                                borderRadius: BorderRadius.circular(w*0.08)
                                            ),
                                            child: Image(image: AssetImage(images[index]),fit: BoxFit.fill,)
                                        ),
                                      ),


                                      Positioned(
                                        top: h*0.10,
                                        left: w*0.85,
                                        child: Container(
                                          height: w*0.09,
                                          width: w*0.075,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(w*0.2),
                                          ),

                                        ),

                                      ),
                                      Positioned(
                                        left: w*0.30,
                                        top: w*0.07,
                                        child: Column(
                                          // mainAxisAlignment: MainAxisAlignment.end,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(textMap[index]["text1"],
                                              style: TextStyle(
                                                color: colorPage.thirdColor,
                                                fontSize: w*0.04,
                                                fontWeight: FontWeight.w700,
                                              ),),
                                            SizedBox(height: w*0.03,),
                                            Text(textMap[index]["text2"],
                                              style: TextStyle(
                                                  color: colorPage.thirdColor,
                                                  fontSize: w*0.04,
                                                  fontWeight: FontWeight.w500
                                              ),),
                                            SizedBox(height: w*0.01,),
                                            Container(
                                              height: w*0.06,
                                              width: w*0.35,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(w*0.02),
                                                  color: colorPage.fifteen
                                              ),
                                              child: Center(child:
                                              Text("Canceled & Refunded",
                                                style: TextStyle(
                                                    color: colorPage.sixteen
                                                ),)),

                                            ),

                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        top: w*0.3,

                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              width: w*1,
                                              child: Divider(
                                                height: w*0.04,
                                                thickness: w*0.002,
                                                color: colorPage.twelve,
                                                indent: w*0.05,
                                                endIndent: w*0.10,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        top: w*0.37,
                                        left: w*0.05,
                                        right: w*0.04,
                                        child: Container(
                                          width: w*1,
                                          height: w*0.09,
                                          decoration: BoxDecoration(
                                              color: colorPage.fifteen,
                                              borderRadius: BorderRadius.circular(w*0.03)
                                          ),
                                          child: Row(
                                            children: [
                                              SizedBox(width: w*0.05,),
                                              Container(
                                                  width: w*0.08,
                                                  height: w*0.06,
                                                  child: SvgPicture.asset(icon.warning)),
                                              Text("You canceled this hotel booking",
                                                style: TextStyle(color: colorPage.sixteen),)
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              },

                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              )
            ],
          ),
        ));
  }
}
