import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_booking/color_page.dart';
import 'package:hotel_booking/hello.dart';
import 'package:hotel_booking/icon.dart';
import 'package:hotel_booking/hello.dart';

import 'main.dart';

class newPassword extends StatefulWidget {
  const newPassword({super.key});

  @override
  State<newPassword> createState() => _newPasswordState();
}

class _newPasswordState extends State<newPassword> {
  @override
  TextEditingController   passwordController =TextEditingController();
  TextEditingController   password1Controller =TextEditingController();
  final formKey=GlobalKey<FormState>();
  final passwordValidation=RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#$&*~]).{8,}$');
  bool hide=true;
  bool hide1=true;
  bool check1=false;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPage.firstColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorPage.firstColor,
        leading: InkWell(
            onTap:() {
              Navigator.pop(context);
            },
            child: Center(child: SvgPicture.asset(icon.arrow,height: w*0.09,width: 0.09,))),
        title: Text("Create New Password",
          style: TextStyle(
              fontSize: w*0.07,
              fontWeight: FontWeight.w700,
              color: colorPage.thirdColor
          ),),
      ),
      body: Padding(
        padding: EdgeInsets.all(w*0.03),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Container(
              width: w*1,
              height: h*0.85,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Create Your New Password",
                      style: TextStyle(
                        color: colorPage.sixthColor,
                        fontWeight: FontWeight.w500,
                        fontSize: w*0.045,
                      ),),
                    ],
                  ),
                  SizedBox(height: w*0.03,),

                  TextFormField(
                    controller: passwordController,

                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    obscureText: hide==true?true:false,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if(!passwordValidation.hasMatch(value!)){
                        return "Password Must Contains One UpperCase,One LowerCase,\nOne Symbols,One number";
                      }
                      else{
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(w*0.03)),
                      labelText: "New Password",
                      labelStyle: TextStyle(
                          fontSize: w*0.045,
                          fontWeight: FontWeight.w700),
                      hintText: "New Password",
                      hintStyle: TextStyle(
                          fontSize: w*0.045,
                          fontWeight: FontWeight.w700),
                      suffixIcon: Container(
                          width: w*0.02,
                          height: w*0.02,
                          child: InkWell(
                              onTap: () {
                                hide=!hide;
                                setState(() {

                                });
                              },
                              child: Icon(hide==true?Icons.visibility_off:Icons.visibility))),
                    ),
                  ),
                  SizedBox(height: w*0.05,),
                  TextFormField(
                    controller: password1Controller,

                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    obscureText: hide1==true?true:false,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if(!passwordValidation.hasMatch(value!)){
                        return "Password Must Contains One UpperCase,One LowerCase,\nOne Symbols,One number";
                      }
                      else{
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(w*0.03)),
                      labelText: "Confirm Password",
                      labelStyle: TextStyle(
                          fontSize: w*0.045,
                          fontWeight: FontWeight.w700),
                      hintText: "Confirm Password",
                      hintStyle: TextStyle(
                          fontSize: w*0.045,
                          fontWeight: FontWeight.w700),
                      suffixIcon: Container(
                          width: w*0.02,
                          height: w*0.02,
                          child: InkWell(
                              onTap: () {
                                hide1=!hide1;
                                setState(() {

                                });
                              },
                              child: Icon(hide1==true?Icons.visibility_off:Icons.visibility))),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                          value: check1,
                          activeColor: colorPage.secondaryColor,
                          onChanged:(value){
                            setState(() {
                              check1=value!;
                            });
                          },
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(w*0.015)),
                        side:
                      BorderSide(
                          width: w*0.007,
                          color: colorPage.secondaryColor),
                      ),
                      Text("Remember me",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: w*0.04,
                        ),)
                    ],
                  ),
                  SizedBox(height: w*0.10,),
                  InkWell(
                    onTap: () {
                      if (
                          passwordController.text != ""&&
                              password1Controller.text!=""&&
                              passwordController.text==password1Controller.text&&
                          formKey.currentState!.validate()) {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => helloBolu(),));
                      }
                      else {
                        password1Controller.text == "" ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please enter your Password"))) :
                        passwordController.text == "" ? ScaffoldMessenger.of(context).
                        showSnackBar(SnackBar(content: Text("Please enter your password"))) :
                        passwordController.text!=password1Controller.text? ScaffoldMessenger.of(context).
                        showSnackBar(SnackBar(content: Text("Passwords do not match"))) :
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("Please enter your valid details")));
                      }
                    },
                    child: Container(
                      height: w*0.15,
                      width: w*0.9,
                      decoration:
                      BoxDecoration(
                        borderRadius:BorderRadius.circular(w*0.08),
                        color: colorPage.secondaryColor,
                      ),
                      child: Center(
                        child: Text("Continue",
                            style: TextStyle(
                                fontSize: w*0.050,
                                fontWeight: FontWeight.w600,
                                color: colorPage.firstColor
                            )),
                      ),
                    ),
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
