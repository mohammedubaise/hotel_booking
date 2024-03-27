import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_booking/color_page.dart';
import 'package:hotel_booking/icon.dart';
import 'package:hotel_booking/image_page.dart';
import 'package:hotel_booking/select_date.dart';
import 'package:lottie/lottie.dart';
import 'package:read_more_text/read_more_text.dart';

import 'main.dart';

class presidantial extends StatefulWidget {
  const presidantial({super.key});

  @override
  State<presidantial> createState() => _presidantialState();
}

class _presidantialState extends State<presidantial> {
  bool more=false;
  bool seeAll=false;
  @override
  List hotel =[
    "assets/images/Rectangle 17.png",
    "assets/images/Rectangle 18.png",
    "assets/images/Rectangle 95 (1).png"
  ];
  List review =[
    {
      "image":"assets/images/Ellipse 3.png",
      "title":"Ivande Othawa",
      "subtitle":"Jan 20, 2025",
      "text":"Very nice and comfortable hotel, thank you for accompanying my vacation!"

    },
    {
      "image":"assets/images/Ellipse 4.png",
      "title":"Nonso Davies",
      "subtitle":"Jan 20, 2025",
      "text":"The rooms are very elegant and the natural views are amazing can’t wait to come back again"

    },
    {
      "image":"assets/images/Ellipse 5.png",
      "title":"Peter Shege",
      "subtitle":"Jan 09, 2025",
      "text":"Very nice hotel, my friends and I are very satisfied with the service!"

    },
    {
      "image":"assets/images/Ellipse 5.png",
      "title":"Christopher",
      "subtitle":"Jan 05, 2028",
      "text":"Very nice hotel, my friends and I are very satisfied with the service!"

    },
    {
      "image":"assets/images/Ellipse 5.png",
      "title":"Freddy",
      "subtitle":"Jan 01, 2028",
      "text":"Very nice hotel, my friends and I are very satisfied with the service!"

    },

  ];
  List images=[
    "assets/images/Rectangle 57.png",
    "assets/images/Rectangle 61.png",
    "assets/images/h.foodHall.jpg",
    "assets/images/Rectangle 65.png",
    "assets/images/h.gym.jpg",
    "assets/images/Rectangle 69.png",
    "assets/images/h.hall.jpg",
    "assets/images/Rectangle 73.png",
    "assets/images/h.outdoor.jpg",
    "assets/images/Rectangle 85.png",
    "assets/images/Rectangle 34.png",
    "assets/images/Rectangle 95 (1).png",

  ];
  
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: colorPage.firstColor,
      bottomNavigationBar: Container(
        width: w*1,
        height: w*0.22,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Divider(
              height: w*0.02,
              color: colorPage.eightColor,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
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
                SizedBox(width: w*0.10,),

                Container(

                  height: w*0.15,

                  width: w*0.6,

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

                  child: InkWell(

                    onTap:

                        () {

                      Navigator.push(context,MaterialPageRoute(builder: (context) => selectDate(),));

                    },

                    child: Center(

                      child: Text(

                        "Book Now!",

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
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorPage.firstColor,
        leading: InkWell(
            onTap:() {
              Navigator.pop(context);
            },
            child: Center(child: SvgPicture.asset(icon.arrow,height: w*0.09,width: 0.09,))),
        title: Text("Presidential Hotel",
          style: TextStyle(
              fontSize: w*0.06,
              fontWeight: FontWeight.w700,
              color: colorPage.thirdColor
          ),),

      ),
body: SingleChildScrollView(
  physics: BouncingScrollPhysics(),
  child:   Column(

    // mainAxisAlignment: MainAxisAlignment.spaceAround,

    crossAxisAlignment: CrossAxisAlignment.start,

    children: [

      Container(

        height: h*0.82,
        width: w*1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
            height: w*0.7,
            width: w*1,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(imagePage.hotel6),fit: BoxFit.fill),
            ),
              ),
        Padding(
          padding: EdgeInsets.all(w*0.04),
          child: Container(
            height: w*0.99,
            width: w*1,
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,

              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [



                Text("Presidential Hotel",
                style: TextStyle(
                  fontSize: w*0.09,
                  fontWeight: FontWeight.w700
                ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(width: w*0.035,),
                   SvgPicture.asset(icon.location),
                   Text("12 Eze Adele Road Rumuomasi Lagos Nigeria",
                   style: TextStyle(
                     fontSize: w*0.04,
                     fontWeight: FontWeight.w500,
                   ),),
                 ],
                ),
                Divider(
                  color: colorPage.eightColor,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Gallery Photos",
                    style: TextStyle(
                      fontSize: w*0.055,
                      fontWeight: FontWeight.w700,
                    ),),
                    InkWell(
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
                                height: w*1.2,
                                width: w*1,
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: GridView.builder(
                                          itemCount: 10,

                                          physics: BouncingScrollPhysics(),
                                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2,
                                            crossAxisSpacing: w*0.03,
                                            mainAxisSpacing: w*0.03,
                                            childAspectRatio: 1,
                                          ),
                                          itemBuilder: (BuildContext context, int index) {
                                            return  Container(
                                              width: w*0.2,
                                              height: w*0.2,
                                              decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  borderRadius: BorderRadius.circular(w*0.05),
                                                image: DecorationImage(image: AssetImage(images[index]),fit: BoxFit.fill)
                                              ),
                                            );
                                          },
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
                      child: Text("See All",
                      style: TextStyle(
                        color: colorPage.secondaryColor,
                        fontSize: w*0.055,
                        fontWeight: FontWeight.w700
                      ),),
                    ),
                  ],
                ),
                Container(
                  height: w*0.26,
                  width: w*1,
                  child: ListView.builder(
                    itemCount: hotel.length,
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: w*0.25,
                        width: w*0.35,
                        margin: EdgeInsets.only(right: w*0.03),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(w*0.03),
                          image: DecorationImage(image: AssetImage(hotel[index]),fit: BoxFit.fill)
                        ),
                      );

                    },

                  ),

                ),
                Text("Details",
                  style: TextStyle(
                      fontSize: w*0.055,
                      fontWeight: FontWeight.w700,
                  ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: w*0.015),
                      child: Column(
                        children: [
                          SvgPicture.asset(icon.building),
                          SizedBox(height: w*0.01,),
                          Text("Hotels",
                          style: TextStyle(
                            fontSize: w*0.035,
                            fontWeight: FontWeight.w300,
                          ),)
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        SvgPicture.asset(icon.bedroom),
                        Text("4 Bedrooms",
                        style: TextStyle(
                          fontSize: w*0.035,
                          fontWeight: FontWeight.w300,
                        ),)
                      ],
                    ),
                    Column(
                      children: [
                        SvgPicture.asset(icon.bathroom),
                        Text("2 Bathrooms",
                        style: TextStyle(
                          fontSize: w*0.035,
                          fontWeight: FontWeight.w300,
                        ),)
                      ],
                    ),
                    Column(
                      children: [
                        SvgPicture.asset(icon.squarefeet),
                        Text("3000 sqft",
                        style: TextStyle(
                          fontSize: w*0.035,
                          fontWeight: FontWeight.w300,
                        ),),
                      ],
                    ),
                  ],
                ),
                Text("Description",
                  style: TextStyle(
                      fontSize: w*0.055,
                      fontWeight: FontWeight.w700,
                  ),),
              ],
            ),
          ),
        ),
          ],
        ),
      ),

     Padding(
       padding: EdgeInsets.only(left: w*0.05,right: w*0.05),
       child: Container(
         width: w*1,
         height: h*1.2,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             ReadMoreText(
               "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt aliqua.\n"
               "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.",
               numLines: 5,
               readMoreText: 'ReadMore',
               readMoreIconColor:colorPage.secondaryColor,
               readMoreTextStyle: TextStyle(
               color: colorPage.secondaryColor,
             ),
               readLessText: 'ReadLess',
             ),
             Text("Facilities",
               style: TextStyle(
                 fontSize: w*0.055,
                 fontWeight: FontWeight.w700,
               ),),
            Container(
              width: w*1,
              height: w*0.3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: w*0.25,
                        height: w*0.3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.asset(icon.swimming),
                            Text("Swimming Pool",
                              style: TextStyle(
                                fontSize: w*0.035,
                                fontWeight: FontWeight.w300,
                              ),),
                            SvgPicture.asset(icon.meetingRoom),
                            Text("Meeting Room",
                              style: TextStyle(
                                fontSize: w*0.035,
                                fontWeight: FontWeight.w300,
                              ),)
                          ],
                        ),
                      ),
                      Container(
                        width: w*0.13,
                        height: w*0.3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.asset(icon.wifi),
                            Text("WiFi",
                              style: TextStyle(
                                fontSize: w*0.035,
                                fontWeight: FontWeight.w300,
                              ),),
                            SvgPicture.asset(icon.elavator),
                            Text("Elevator",
                              style: TextStyle(
                                fontSize: w*0.035,
                                fontWeight: FontWeight.w300,
                              ),)
                          ],

                        ),
                      ),
                      Container(
                        width: w*0.25,
                        height: w*0.3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.asset(icon.restuarant),
                            Text("Restuarant",
                              style: TextStyle(
                                fontSize: w*0.035,
                                fontWeight: FontWeight.w300,
                              ),),


                            Container(
                              width: w*0.07,
                              height: w*0.08,
                              // color: Colors.red,
                              // margin: EdgeInsets.only(top: w*0.025),
                                child: SvgPicture.asset(icon.fitness)),
                            Text("Fitness Center",
                              style: TextStyle(
                                fontSize: w*0.035,
                                fontWeight: FontWeight.w300,
                              ),),
                          ],
                        ),
                      ),
                      Container(
                        width: w*0.25,
                        height: w*0.3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.asset(icon.parking),
                            Text("Parking",
                              style: TextStyle(
                                fontSize: w*0.035,
                                fontWeight: FontWeight.w300,
                              ),),

                            SvgPicture.asset(icon.twentyfourhours),
                            Text("24-hours Open",
                              style: TextStyle(
                                fontSize: w*0.035,
                                fontWeight: FontWeight.w300,
                              ),)

                          ],
                        ),
                      ),

                    ],
                  ),

                ],
              ),
            ),
             Text("Location",
               style: TextStyle(
                 fontSize: w*0.055,
                 fontWeight: FontWeight.w700,
               ),),
             Image(image: AssetImage(imagePage.map)),
             Row(

               children: [
                 Text("Review",
                 style: TextStyle(
                   fontSize: w*0.045,
                   fontWeight: FontWeight.w600
                 ),),
                 SizedBox(width: w*0.02,),
                 SvgPicture.asset(icon.yellowStar),
                 Text("5.0",
                   style: TextStyle(
                     color: colorPage.secondaryColor,
                     fontWeight: FontWeight.w600,
                     fontSize: w*0.04,
                   ),),
                 Text("(4,345 reviews)",
                   style: TextStyle(
                     fontWeight: FontWeight.w400,
                     fontSize: w*0.035,
                   ),),
               ],
             ),
             Container(
               height: w*1.2,
               width: w*1,
               child: ListView.builder(
                 itemCount: more==false?review.sublist(0,3).length:review.length,
                 physics: more==false?NeverScrollableScrollPhysics():BouncingScrollPhysics(),
                 itemBuilder: (BuildContext context, int index) {
                   return Container(
                     height: w*0.34,
                     width: w*1,
                     margin: EdgeInsets.only(top: w*0.05,
                     left: w*0.006,right: w*0.006),
                     decoration: BoxDecoration(
                       color: colorPage.firstColor,
                       borderRadius: BorderRadius.circular(w*0.03),
                       boxShadow: [
                         BoxShadow(
                             color: colorPage.fourthColor,
                             blurRadius: 5,
                             spreadRadius: 0,
                             offset: Offset(0, 4)
                         ),

                       ],

                     ),
                     child: Column(
                       children: [
                         ListTile(
                           leading: CircleAvatar(backgroundImage:AssetImage(review[index]["image"])),
                           title: Text(review[index]["title"], style: TextStyle(fontSize: w*0.034, fontWeight: FontWeight.w600),),
                           subtitle: Text(review[index]["subtitle"],style: TextStyle(fontWeight: FontWeight.w400),),
                           trailing:  Container(
                             height: w*0.10,
                             width: w*0.18,
                             decoration: BoxDecoration(
                               color: colorPage.secondaryColor,
                               borderRadius: BorderRadius.circular(w*0.08),
                             ),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 SvgPicture.asset(icon.star),
                                 Text("5.0",
                                   style: TextStyle(
                                     color: colorPage.firstColor,
                                   ),
                                 ),
                               ],
                             ),

                           ),
                         ),
                         Padding(
                           padding: EdgeInsets.all(w*0.03),
                           child: Text(review[index]["text"],
                           style: TextStyle(fontWeight: FontWeight.w400,
                           ),),
                         )
                       ],
                     ),
                   );
                 },

               ),
             ),
             InkWell(
               onTap: () {
                 more=!more;
                 setState(() {

                 });
               },
               child: Container(
                 height: w*0.15,
                 width: w*1,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(w*0.09),
                   color: colorPage.tenthColor
                 ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text(more==false?"More":"less",
                     style: TextStyle(
                       fontWeight: FontWeight.w600,
                       color: colorPage.secondaryColor
                     ),
                     ),
                     SizedBox(width: w*0.02,),
                    more==false?SvgPicture.asset(icon.downArrow)
                        :
                        Icon(Icons.keyboard_arrow_up_outlined,color: colorPage.secondaryColor,)
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
