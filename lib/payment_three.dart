import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_booking/color_page.dart';
import 'package:hotel_booking/icon.dart';
import 'package:hotel_booking/image_page.dart';
import 'package:hotel_booking/new_card.dart';
import 'package:hotel_booking/tickets.dart';
import 'package:lottie/lottie.dart';

import 'main.dart';

class paymentThree extends StatefulWidget {
  final String card;
  const paymentThree({super.key,
    required this.card,
  });

  @override
  State<paymentThree> createState() => _paymentThreeState();
}

class _paymentThreeState extends State<paymentThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPage.tenthColor,
      bottomNavigationBar:  Container(
        height: w*0.27,
        width: w*0.9,
        color: colorPage.firstColor,
        child: Column(
          children: [
            SizedBox(height: w*0.04,),
            Container(
              height: w*0.15,
              width: w*0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(w*0.15),
                color: colorPage.secondaryColor,

              ),
              child: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    barrierDismissible: false,

                    builder: (context) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(w*0.03)
                        ),
                        content: Container(
                          height: w*1,
                          width: w*1,

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: w*0.5,
                                width: w*0.8,
                               child:Lottie.asset(imagePage.paymentLottie,fit: BoxFit.fill),
                              ),
                              Text("Payment Successfull!",
                              style: TextStyle(
                                fontSize: w*0.055,
                                fontWeight: FontWeight.w700,
                                color: colorPage.secondaryColor
                              ),),
                              Column(
                                children: [
                                  Text("Successfully made payment and",
                                  style: TextStyle(
                                    fontSize: w*0.047,
                                    fontWeight: FontWeight.w700,
                                    color: colorPage.sixthColor
                                  ),),
                                  Text("hotel booking",
                                  style: TextStyle(
                                    fontSize: w*0.047,
                                    fontWeight: FontWeight.w700,
                                    color: colorPage.sixthColor
                                  ),),
                                ],
                              ),
                              Container(
                                height: w*0.15,
                                width: w*1,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(w*0.08),
                                  color: colorPage.secondaryColor
                                ),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder:(context) => tickets(),));
                                  },
                                  child: Center(
                                    child: Text("View Ticket",
                                      style: TextStyle(
                                        fontSize: w*0.04,
                                        fontWeight: FontWeight.w600,
                                        color: colorPage.firstColor
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: w*0.15,
                                width: w*1,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(w*0.08),
                                  color: colorPage.tenthColor
                                ),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Center(
                                    child: Text("Cancel",
                                      style: TextStyle(
                                        fontSize: w*0.04,
                                        fontWeight: FontWeight.w600,
                                        color: colorPage.secondaryColor
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
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
        title: Text("Payment",
          style: TextStyle(
              fontSize: w*0.06,
              fontWeight: FontWeight.w700,
              color: colorPage.thirdColor
          ),),

      ),
         body: Padding(
           padding: EdgeInsets.all(w*0.03),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Container(
                 height: w*0.3,
                 width: w*0.95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(w*0.03),
                  color: colorPage.firstColor
                ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     Container(
                         height: w*0.25,
                         width: w*0.25,
                         margin: EdgeInsets.only(left: w*0.03),
                         decoration:BoxDecoration(
                             borderRadius: BorderRadius.circular(w*0.08)
                         ),
                         child: Image(image: AssetImage(imagePage.hotel1),fit: BoxFit.fill,)
                     ),
                     Padding(
                       padding:  EdgeInsets.only(top: w*0.03),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text("Intercontinental Hotel",
                             style: TextStyle(
                               color: colorPage.thirdColor,
                               fontSize: w*0.04,
                               fontWeight: FontWeight.w700,
                             ),),
                           Text("Lagos,Nigeria",
                             style: TextStyle(
                                 color: colorPage.thirdColor,
                                 fontSize: w*0.04,
                                 fontWeight: FontWeight.w500
                             ),),
                           // SizedBox(height: w*0.01,),
                           Row(
                             children: [
                               SvgPicture.asset(icon.yellowStar),
                               Text("5.0",
                                 style: TextStyle(
                                   color: colorPage.secondaryColor,
                                   fontWeight: FontWeight.w600,
                                   fontSize: w*0.04,
                                 ),),
                               SizedBox(width: w*0.03,),
                               Text("(4,345 reviews)",
                                 style: TextStyle(
                                   fontWeight: FontWeight.w400,
                                   fontSize: w*0.035,
                                 ),),

                             ],
                           ),

                         ],
                       ),
                     ),
                     Column(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         // SizedBox(height: w*0.05,),
                         Column(
                           children: [
                             Text("\$205",
                               style: TextStyle(
                                   color: colorPage.secondaryColor,
                                   fontSize: w*0.055,
                                   fontWeight: FontWeight.w700
                               ),),
                             Text("/night",
                               style:TextStyle(

                                 fontSize: w*0.03,
                                 fontWeight: FontWeight.w400,
                               ) ,),
                           ],
                         ),

                         SvgPicture.asset(imagePage.grey)
                       ],
                     ),

                   ],
                 ),
               ),
           Container(
             height: w*0.35,
             width: w*0.95,
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(w*0.03),
                 color: colorPage.firstColor
             ),
             child: Padding(
               padding: EdgeInsets.all(w*0.03),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text("Check in",
                       style: TextStyle(
                         fontWeight: FontWeight.w500,
                         fontSize: w*0.04,
                         color: colorPage.sixthColor
                       ),),
                       Text("Check out",
                       style: TextStyle(
                         fontWeight: FontWeight.w500,
                         fontSize: w*0.04,
                         color: colorPage.sixthColor
                       ),),
                       Text("Guest",
                       style: TextStyle(
                         fontWeight: FontWeight.w500,
                         fontSize: w*0.04,
                         color: colorPage.sixthColor
                       ),),
                     ],
                   ),
                   Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     crossAxisAlignment: CrossAxisAlignment.end,
                     children: [
                       Text("December 16, 2024",
                         style: TextStyle(
                             fontWeight: FontWeight.w700,
                             fontSize: w*0.04,
                         ),),
                       Text("December 19, 2024",
                         style: TextStyle(
                             fontWeight: FontWeight.w700,
                             fontSize: w*0.04,
                         ),),
                       Text("3",
                         style: TextStyle(
                             fontWeight: FontWeight.w700,
                             fontSize: w*0.04,
                         ),),
                     ],
                   )
                 ],
               ),
             ),
           ),
               Container(
                 height: w*0.38,
                 width: w*0.95,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(w*0.03),
                     color: colorPage.firstColor
                 ),
                 child: Padding(
                   padding: EdgeInsets.all(w*0.03),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Text("5 Nights",
                             style: TextStyle(
                                 fontWeight: FontWeight.w500,
                                 fontSize: w*0.04,
                                 color: colorPage.sixthColor
                             ),),
                           Text("Taxes & Fees (10%)",
                             style: TextStyle(
                                 fontWeight: FontWeight.w500,
                                 fontSize: w*0.04,
                                 color: colorPage.sixthColor
                             ),),

                             Container(
                               width: w*0.48,
                               child: Divider(
                                 thickness: w*0.003,
                                 color: colorPage.eightColor,
                               ),
                             ),

                           Text("Total",
                             style: TextStyle(
                                 fontWeight: FontWeight.w500,
                                 fontSize: w*0.04,
                                 color: colorPage.sixthColor
                             ),),
                         ],
                       ),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.end,
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Text("\$760.00",
                             style: TextStyle(
                               fontWeight: FontWeight.w700,
                               fontSize: w*0.04,
                             ),),
                           Text("\$680.00",
                             style: TextStyle(
                               fontWeight: FontWeight.w700,
                               fontSize: w*0.04,
                             ),),
                           Container(
                             width: w*0.4,
                             child: Divider(
                               thickness: w*0.003,
                               color: colorPage.eightColor,
                             ),
                           ),
                           Text("\$1440.00",
                             style: TextStyle(
                               fontWeight: FontWeight.w700,
                               fontSize: w*0.04,
                             ),),
                         ],
                       )
                     ],
                   ),
                 ),
               ),
               Container(
                 height: w*0.17,
                 width: w*0.95,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(w*0.03),
                   color: colorPage.firstColor,
                 ),
                 child: Padding(
                   padding: EdgeInsets.only(left: w*0.02,
                   right: w*0.02),
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

                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => newCard(),));
                        },
                        child: Text("Change",
                        style: TextStyle(
                          color: colorPage.secondaryColor,
                          fontSize: w*0.04,
                          fontWeight: FontWeight.w500
                        ),),
                      )

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
