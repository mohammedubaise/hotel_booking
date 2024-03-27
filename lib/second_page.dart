import 'package:flutter/material.dart';
import 'package:hotel_booking/color_page.dart';
import 'package:hotel_booking/lastPage.dart';
import 'package:hotel_booking/unbording.dart';

import 'main.dart';

class secondPage extends StatefulWidget {
  const secondPage({super.key});

  @override
  State<secondPage> createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
  int currentindex=0;
  PageController controller=PageController();
  @override
  // void initState() {
  //   // TODO: implement initState
  //   Future.delayed(Duration(
  //     seconds: 4,
  //   )).then((value) => Navigator.push(context, MaterialPageRoute(builder: (context) => Last(),)));
  //   super.initState();
  // }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: w*1.6,
            width: w*1,
            child: PageView.builder(
              controller: controller,
                padEnds: false,
                itemCount: contents.length,
                onPageChanged: (int index){
                setState(() {
                  currentindex=index;
                });
                },
                itemBuilder: (_,i){
                return Column(
                  children: [
                    Container(
                      height: w*1.1,
                      width: w*1,
                      decoration: BoxDecoration(
                        image:DecorationImage(image: AssetImage(contents[i].image),fit: BoxFit.fill ),
                      ),
                    ),
                    SizedBox(height: w*0.06,),
                    Text(contents[i].title,textAlign: TextAlign.center,
                    style:TextStyle(
                      color: colorPage.thirdColor,
                      fontSize:w*0.09,
                      fontWeight: FontWeight.w700,
                    ),),
                    SizedBox(height: w*0.06,),
                    Text(contents[i].description,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: colorPage.fourthColor,
                      fontSize: w*0.042,
                    ),),
                  ],
                );
                },
            ),
          ),
          SizedBox(
            height: w*0.06,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:List.generate(3, (index) => Container(
              height: w*0.04,
              width: currentindex==index?w*0.095:w*0.04,
              margin: EdgeInsets.only(right: w*0.04),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(w*0.03),
                color: currentindex==index?colorPage.secondaryColor:colorPage.firstColor),
            ),)
          ),
        SizedBox(height: w*0.04,),
        InkWell(
          onTap: () {
            if(currentindex==2){
              Navigator.push(context, MaterialPageRoute(builder:
                  (context)=> Last()));
            }
            else{
              controller.nextPage(duration: Duration(milliseconds: 100),
                  curve: Curves.easeIn);
            }
          },
          child: Container(
            height: w*0.13,
            width: w*0.8,
            child:  Center(
              child: Text(currentindex==2 ? "Done" : "Next",
                style: TextStyle(
                    fontSize: w*0.05,
                    color: colorPage.firstColor,
                    fontWeight: FontWeight.w600
                ),),
            ),
            decoration: BoxDecoration(
              color: colorPage.secondaryColor,
              borderRadius: BorderRadius.circular(w*0.1),
            ),
          ),
        ),
        SizedBox(height: w*0.06,),
        currentindex==2 ? SizedBox() : InkWell(
        onTap: () {
      controller.jumpToPage(2);
    },
    child: Container(
    height: w*0.13,
    width: w*0.8,
    child:  Center(
      child: Text("Skip",
        style: TextStyle(
            fontSize: w*0.05,
            color: colorPage.secondaryColor,
            fontWeight: FontWeight.w600
        ),),
    ),
      decoration: BoxDecoration(
        color: colorPage.firstColor,
        borderRadius: BorderRadius.circular(w*0.1),
      ),
    ),
        ),
          SizedBox(height: w*0.1,)


        ],
      ),

    );
  }
}
