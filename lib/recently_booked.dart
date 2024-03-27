import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_booking/Presidential_hotel.dart';
import 'package:hotel_booking/color_page.dart';
import 'package:hotel_booking/icon.dart';
import 'package:hotel_booking/image_page.dart';

import 'main.dart';

class recentlyBooked extends StatefulWidget {
  const recentlyBooked({super.key});

  @override
  State<recentlyBooked> createState() => _recentlyBookedState();
}

class _recentlyBookedState extends State<recentlyBooked> {
  @override
  int select=0;
  List saved=[];

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
      "text3":"\$205",
      "text4":"/night",

    },
    {
      "text1":"Nevada Hotel",
      "text2":"Lagos, Nigeria",
      "text3":"\$107",
      "text4":"/night",

    },
    {
      "text1":"Oriental Hotel",
      "text2":"Lagos, Nigeria",
      "text3":"\$190",
      "text4":"/night",

    },
    {
      "text1":"Federal Palace Hotel",
      "text2":"Lagos, Nigeria",
      "text3":"\$200",
      "text4":"/night",

    },
    {
      "text1":"Presidential Hotel",
      "text2":"Lagos, Nigeria",
      "text3":"\$160",
      "text4":"/night",

    }
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPage.tenthColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorPage.firstColor,
        leading: InkWell(
            onTap:() {
              Navigator.pop(context);
            },
            child: Center(child: SvgPicture.asset(icon.arrow,height: w*0.09,width: 0.09,))),
        title: Text("Recently Booked",
          style: TextStyle(
              fontSize: w*0.06,
              fontWeight: FontWeight.w700,
              color: colorPage.thirdColor
          ),),
        actions: [

          SvgPicture.asset(icon.menu),
          SizedBox(width: w*0.03,),
          SvgPicture.asset(icon.windows),
          SizedBox(width: w*0.05,),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(w*0.03),
          child: Column(
               children: [
                 Container(
                   height: h*0.9,
                   width: w*1,
                   child: ListView.builder(

                     itemCount:textMap.length,
                     scrollDirection: Axis.vertical,
                     physics: BouncingScrollPhysics(),
                     shrinkWrap: true,
                     itemBuilder: (BuildContext context, int index) {
                       return InkWell(
                         onTap: () {
                           index==4?Navigator.push(context, MaterialPageRoute(builder: (context) => presidantial(),)):index;
                           setState(() {

                           });
                         },
                         child: Container(
                           height: w*0.33,
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
                                     height: w*0.27,
                                     width: w*0.25,
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
                                   child: InkWell(
                                     onTap: () {
                                       if(saved.contains(index))
                                         {
                                           saved.remove(index);
                                         }
                                       else{
                                         saved.add(index);
                                       }
                                       setState(() {

                                       });
                                     },
                                       child:saved.contains(index)?SvgPicture.asset(icon.greenSaved):SvgPicture.asset(icon.saved)),
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
                                         ),)

                                       ],
                                     )
],
                         ),
                         ),
                                     Positioned(
                                       top: w*0.05,
                                       left: w*0.8,
                                       child: Column(
                                         children: [
                                           Text(textMap[index]["text3"],
                                             style: TextStyle(
                                                 color: colorPage.secondaryColor,
                                                 fontSize: w*0.055,
                                                 fontWeight: FontWeight.w700
                                             ),),
                                           Text(textMap[index]["text4"],
                                             style:TextStyle(

                                               fontSize: w*0.03,
                                               fontWeight: FontWeight.w400,
                                             ) ,),
                                         ],
                                       ),
                                     ),


                                     SizedBox(
                                       height: w*0.05,
                                     ),



                             ],
                           ),
                         ),
                       );
                     },

                   ),
          ),



               ],
             ),
        ),
      ),
    );
  }
}
