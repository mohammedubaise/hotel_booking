import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_booking/color_page.dart';
import 'package:hotel_booking/icon.dart';
import 'package:hotel_booking/image_page.dart';
import 'package:hotel_booking/recently_booked.dart';

import 'main.dart';
import 'myBookmark.dart';

class homePage extends StatefulWidget {
  final String name;
  const homePage({super.key, required this.name});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  @override
  int count=1;
  List text=[
    "All Hotel",
    "Recommended",
    "Popular",
    "Trending",
  ];
  List images=[
    "assets/images/Rectangle 34.png",
    "assets/images/Rectangle 61.png",
    "assets/images/Rectangle 65.png",
    "assets/images/Rectangle 69.png",
    "assets/images/Rectangle 73.png"
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
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPage.firstColor,
      appBar: AppBar(
        backgroundColor: colorPage.firstColor,
        elevation: 0,
        leading: SvgPicture.asset(imagePage.bollu),
        title: Text("Bolu",
          style: TextStyle(
            fontSize: w*0.080,
            fontWeight: FontWeight.w700,
            color: colorPage.thirdColor,
          ),

        ),
        actions: [
          SvgPicture.asset(icon.bellbutton),
          SizedBox(width: w*0.03,),
          InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => myBookmark(),));
              },
              child: SvgPicture.asset(icon.saved)),
          SizedBox(width: w*0.04,),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(w*0.03),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text("Hello, Kezia",
                  style: TextStyle(
                    fontSize: w*0.08,
                    fontWeight: FontWeight.w700,
                  )),
              SizedBox(height: w*0.05,),
              Center(
                child: Container(
                  height: w*0.14,
                  width: w*0.9,
                  decoration: BoxDecoration(
                      color: colorPage.sevenColor,
                    borderRadius: BorderRadius.circular(w*0.03)
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    maxLines: null,
                    decoration: InputDecoration(
                      // border: OutlineInputBorder(borderRadius: BorderRadius.circular(w*0.03)),
                      // labelText: "Search",
                      hintText: "Search",
                      hintStyle: TextStyle(
                        fontSize: w*0.055,
                        fontWeight: FontWeight.w500,
                        color: colorPage.eightColor
                      ),
                      border: InputBorder.none,
                      prefixIcon: Container(
                          width: w*0.02,
                          height: w*0.02,
                          child: Center(child: SvgPicture.asset(icon.search))),
                      suffixIcon: Container(
                          width: w*0.02,
                          height: w*0.02,
                          child: Center(child: SvgPicture.asset(icon.settings))),

                    ),
                  ),
                ),
              ),

              Container(
                height: w*0.2,
                width: w*2,
                child: ListView.builder(

                  itemCount:text.length,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Center(
                      child: InkWell(
                        onTap: () {
                          count=index;
                          setState(() {

                          });
                        },
                        child: Container(
                          height: w*0.1,
                          margin: EdgeInsets.only(right: w*0.03),
                          decoration:count==index? BoxDecoration(
                              color: colorPage.secondaryColor,
                              borderRadius: BorderRadius.circular(w*0.05)
                          ):BoxDecoration(
                            color: colorPage.firstColor,
                            borderRadius: BorderRadius.circular(w*0.05),
                            border: Border.all(color:count==index?colorPage.secondaryColor:colorPage.secondaryColor,width:w*0.003),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(right: w*0.04,left: w*0.04),
                            child: Center(child: Text(text[index],
                                style:TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: w*0.04,
                                  color: count==index?colorPage.firstColor:colorPage.secondaryColor,
                                ))),
                          ),
                        ),
                      ),
                    );
                  },


                ),
              ),
              SizedBox(height: w*0.15,),
              Container(
                height: w*0.9,
                width: w*1,
                child: ListView.builder(

                  itemCount:text.length,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Stack(
                      children:[
                        Container(
                        height: w*1,
                        width: w*0.7,
                        margin: EdgeInsets.only(right: w*0.03),
                        decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(w*0.08)
                        ),
                        child: Image(image: AssetImage(images[index]),fit: BoxFit.fill,)
                      ),
                        Positioned(
                          left: w*0.48,
                          top: h*0.05,
                          child: Container(
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
                        Positioned(
                          top: h*0.34,
                          left: w*0.57,
                          child: Container(
                            height: w*0.09,
                            width: w*0.075,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(w*0.2),
                            ),
                            child: SvgPicture.asset(icon.blackSave),
                          ),

                        ),
                        Padding(
                          padding: EdgeInsets.only(left: w*0.05),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(textMap[index]["text1"],
                              style: TextStyle(
                                color: colorPage.firstColor,
                                fontSize: w*0.06,
                                fontWeight: FontWeight.w700,
                              ),),
                              SizedBox(height: w*0.03,),
                              Text(textMap[index]["text2"],
                              style: TextStyle(
                                color: colorPage.firstColor,
                                fontSize: w*0.04,
                                fontWeight: FontWeight.w500
                              ),),
                              SizedBox(height: w*0.02,),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(textMap[index]["text3"],
                                  style: TextStyle(
                                    color: colorPage.firstColor,
                                    fontSize: w*0.055,
                                    fontWeight: FontWeight.w700
                                  ),),
                                  Text(textMap[index]["text4"],
                                    style:TextStyle(
                                      color: colorPage.firstColor,
                                      fontSize: w*0.04,
                                      fontWeight: FontWeight.w400,
                                    ) ,)
                                ],
                              ),
                             SizedBox(
                               height: w*0.05,
                             )
                            ],
                          ),
                        )
                      ],
                    );
                  },

                ),
              ),
                 SizedBox(height: w*0.08,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("Recently Booked",
                     style: TextStyle(
                       fontSize: w*0.045,
                       fontWeight: FontWeight.w600,
                     ),),
                     InkWell(
                       onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => recentlyBooked(),));
                       },
                       child: Text("See All",
                         style: TextStyle(
                           color: colorPage.secondaryColor,
                           fontSize: w*0.045,
                           fontWeight: FontWeight.w600,
                         ),),
                     ),
                   ],
                 )
            ],
          ),
        ),
      ),
    );
  }
}
