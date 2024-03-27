import 'package:flutter/material.dart';
import 'package:flutter_flip_card/flipcard/gesture_flip_card.dart';
import 'package:flutter_flip_card/modal/flip_side.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_booking/color_page.dart';
import 'package:hotel_booking/icon.dart';
import 'package:hotel_booking/image_page.dart';
import 'package:hotel_booking/payment_2.dart';
import 'package:hotel_booking/payment_three.dart';

import 'main.dart';

class newCard extends StatefulWidget {
  const newCard({super.key});

  @override
  State<newCard> createState() => _newCardState();
}

class _newCardState extends State<newCard> {
  TextEditingController cardController=TextEditingController();
  TextEditingController dateController=TextEditingController();
  TextEditingController cvvController=TextEditingController();
  final formKey=GlobalKey<FormState>();

  get cong => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorPage.firstColor,
        leading: InkWell(
            onTap:() {
              Navigator.pop(context);
            },
            child: Center(child: SvgPicture.asset(icon.arrow,height: w*0.09,width: 0.09,))),
        title: Text("New Card",
          style: TextStyle(
              fontSize: w*0.06,
              fontWeight: FontWeight.w700,
              color: colorPage.thirdColor
          ),),

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(w*0.03),
          child: Container(
            height: h*0.9,
            width: w*1,
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
              GestureFlipCard(
              animationDuration: const Duration(milliseconds: 300),
              axis: FlipAxis.horizontal,
              controller:cong ,// used to ccontrol the Gesture flip programmatically
              enableController : false ,
                // if [True] if you need flip the card using programmatically
          frontWidget: Center(
          child:  Container(
              width: w*1,
              height: w*0.6,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(imagePage.Card),fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(w*0.05)
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: w*0.05,
                    top: w*0.08,
                    child: Text("Balance",
                        style: TextStyle(color: colorPage.firstColor)),
                  ),
                  Positioned(
                    left: w*0.05,
                    top: w*0.15,
                    child: Text("\$1299.15",style:
                    TextStyle(fontSize: w*0.10,
                        fontWeight: FontWeight.w600,
                        color: colorPage.firstColor),),
                  ),
                  Positioned(
                      top: w*0.08,
                      left: w*0.78,
                      child: SvgPicture.asset(icon.yellowround)),
                  Positioned(
                      top: w*0.08,
                      left: w*0.7,
                      child: SvgPicture.asset(icon.redround)),
                  Positioned(
                    top: w*0.34,
                    left: w*0.78,
                    child: Text(dateController.text,style:
                    TextStyle(
                        fontSize: w*0.055,
                        fontWeight: FontWeight.w600,
                        color: colorPage.firstColor
                    ),),
                  ),
                  Positioned(
                    top: w*0.45,
                    left: w*0.58,
                    child: Text(cardController.text,
                      style: TextStyle(
                          fontSize:w*0.055,
                          fontWeight: FontWeight.w600,
                          color: colorPage.firstColor),),
                  )

                ],
              ),
          ),
        ),
        backWidget: Container(
          width: w*1,
          height: w*0.6,
          decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(imagePage.Card),fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(w*0.05)
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: w*1,
                  height: w*0.15,
                  color: colorPage.eighteen,
                ),
                Padding(
                  padding:EdgeInsets.all(w*0.03),
                  child: Row(
                    children: [
                      Container(
                        width: w*0.7,
                        height: w*0.13,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(w*0.02),bottomLeft: Radius.circular(w*0.02)),
                          image: DecorationImage(image: AssetImage(imagePage.atmBack),fit: BoxFit.fill)
                        ),


                      ),
                      Container(
                        width: w*0.15,
                        height: w*0.13,
                        decoration: BoxDecoration(
                            color: colorPage.nineteen,
                            borderRadius:BorderRadius.only(topRight: Radius.circular(w*0.02),bottomRight: Radius.circular(w*0.02))
                        ),
                        child: Center(child: Text(cvvController.text,
                          style: TextStyle(fontSize: w*0.06,
                              fontWeight: FontWeight.w900,),)),
                      ),
                    ],
                  ),
                )
              ],
          ),
        ),
      ),

    Container(
              height: w*0.8,
              width: w*1,

        child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                  TextFormField(
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                  labelText: "Full Name ",
                  labelStyle: TextStyle(
                  fontSize: w*0.055,
                  fontWeight: FontWeight.w500,
                  ),

                  border: OutlineInputBorder(
                  borderSide: BorderSide(width: w*0.1),
                  borderRadius: BorderRadius.circular(w*0.03),
                  ),
                  hintText: "Full Name",
                  hintStyle: TextStyle(
                  fontSize: w*0.055,
                  fontWeight: FontWeight.w500,
                  )
                  )


                  ),
                TextFormField(
                  controller: cardController,
                    maxLength: 11,


                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      counterText: "",
                        labelText: "Card number",
                        labelStyle: TextStyle(
                          fontSize: w*0.055,
                          fontWeight: FontWeight.w500,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: w*0.1),
                          borderRadius: BorderRadius.circular(w*0.03),
                        ),
                        hintText: "Card number",
                        hintStyle: TextStyle(
                          fontSize: w*0.055,
                          fontWeight: FontWeight.w500,
                        )
                    ),
                  onChanged: (value) {
                    setState(() {
                      cardController.text=value;
                    });
                  },


                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: w*0.4,
                      height: w*0.15,
                      child: TextFormField(
                        controller: dateController,

                          maxLength: 4,
                          keyboardType: TextInputType.datetime,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            counterText: "",
                              labelText: "Date",
                              labelStyle: TextStyle(
                                fontSize: w*0.055,
                                fontWeight: FontWeight.w500,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(width: w*0.1),
                                borderRadius: BorderRadius.circular(w*0.03),
                              ),
                              hintText: "Date",
                              hintStyle: TextStyle(
                                fontSize: w*0.055,
                                fontWeight: FontWeight.w500,
                              )
                          ),
                        onChanged: (value) {
                          setState(() {
                            dateController.text=value;
                          });
                        },



                      ),
                    ),
                    Container(
                      width: w*0.4,
                      height: w*0.15,
                      child: TextFormField(
                        controller: cvvController,
                          maxLength: 3,
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                            counterText: "",
                              labelText: "CVV",
                              labelStyle: TextStyle(
                                fontSize: w*0.055,
                                fontWeight: FontWeight.w500,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(width: w*0.1),
                                borderRadius: BorderRadius.circular(w*0.03),
                              ),
                              hintText: "CVV",
                              hintStyle: TextStyle(
                                fontSize: w*0.055,
                                fontWeight: FontWeight.w500,
                              )
                          ),
                        onChanged: (value) {
                          setState(() {
                            cvvController.text=value;
                          });
                        },



                      ),
                    ),
                  ],

                ),

              ],
        ),
    ),


                  Column(
                    children: [
                      Container(
                        height: w*0.15,
                        width: w*0.9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(w*0.15),
                          color: colorPage.secondaryColor,

                        ),
                        child:  InkWell(
                          onTap: () {
                            if(cardController.text!=""&&
                                formKey.currentState!.validate()
                            ){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => paymentTwo(
                                card: cardController.text,),));

                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Submitted Successfully")));


                            }else{
                              cardController.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please Enter your Card number"))):
                              dateController.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please Enter your Date"))):
                              cvvController.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please Enter your CVV"))):
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please Enter your Valid details")));
                            }
                          },
                          child: Center(
                            child: Text(
                              "Add New Card",
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
          ),
        ),
      ),
    );
  }
}
