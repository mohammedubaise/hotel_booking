import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_booking/color_page.dart';
import 'package:hotel_booking/icon.dart';

import 'main.dart';

class allHotelHome extends StatefulWidget {
  const allHotelHome({super.key});

  @override
  State<allHotelHome> createState() => _allHotelHomeState();
}

class _allHotelHomeState extends State<allHotelHome> {
  @override
  int count=0;
  List saved=[];
  List text=[
    "All Hotel",
    "Recommended",
    "Popular",
    "Trending",
  ];
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
  backgroundColor: colorPage.firstColor,
  elevation: 0,
),
      body:
      Column(
        children: [
          Container(
            height: w*0.2,
            width: w*1,
            color: colorPage.firstColor,
            child: Center(
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
          ),
          Container(
            height: w*0.2,
            width: w*2,
            color: colorPage.firstColor,
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
                      margin: EdgeInsets.only(left:w*0.03),
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
          Container(
            height: w*0.1,
              width: w*1,
              color: colorPage.firstColor,
              child: Padding(
                padding: EdgeInsets.only(left: w*0.03),
                child: Text("Recommended  (484,579)",
                style: TextStyle(
                  fontSize: w*0.05,
                  fontWeight: FontWeight.w700
                )),
              )),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(w*0.03),
              child: ListView.builder(

                itemCount:textMap.length,
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
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
                  );
                },

              ),
            ),
          ),
        ],
      ),
    );
  }
}
