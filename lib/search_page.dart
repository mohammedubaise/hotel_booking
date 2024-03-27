import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_booking/color_page.dart';
import 'package:hotel_booking/icon.dart';

import 'main.dart';

class searchPage extends StatefulWidget {
  const searchPage({super.key});

  @override
  State<searchPage> createState() => _searchPageState();
}

class _searchPageState extends State<searchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPage.tenthColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorPage.firstColor,
        title: Text("Search",
          style: TextStyle(
              fontSize: w*0.07,
              fontWeight: FontWeight.w700,
              color: colorPage.thirdColor
          ),),
      ),
     body: Column(
       children: [
         SizedBox(height: w*0.2,),
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
       ],
     ),
    );
  }
}
