import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_booking/color_page.dart';
import 'package:hotel_booking/hello.dart';
import 'package:hotel_booking/home_page.dart';
import 'package:hotel_booking/icon.dart';
import 'package:hotel_booking/image_page.dart';
import 'package:hotel_booking/password.dart';
import 'package:hotel_booking/profile_page.dart';

import 'main.dart';

class loging extends StatefulWidget {
  const loging({super.key});

  @override
  State<loging> createState() => _logingState();
}

class _logingState extends State<loging> {
  @override
  TextEditingController   mailController =TextEditingController();
  TextEditingController   passwordController =TextEditingController();
  final formKey=GlobalKey<FormState>();
  bool check1=false;
  bool hide=true;
  final passwordValidation=RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  final mailValidation=RegExp( r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
  r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
  r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
  r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
  r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
  r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
  r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])');
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: colorPage.firstColor,
      appBar: AppBar(
        backgroundColor: colorPage.firstColor,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => profile(signin: false,),));
          },
          child: Center(child: SvgPicture.asset(icon.arrow,
            height: w*0.09,width: w*0.09,)),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(w*0.08),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Text("Loging to your Account",
                  style:TextStyle(
                    fontSize: w*0.13,
                    fontWeight: FontWeight.w700,
                  ) ,
                ),
                SizedBox(height: w*0.13),
                Container(
                  height: w*0.25,
                  width: w*1,

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextFormField(
                        controller: mailController,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        maxLines: null,

                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if(!mailValidation.hasMatch(value!)){
                            return "Enter valid Email";
                          }
                          else{
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(w*0.03)),
                          labelText: "Email",
                          hintText: "Email",
                          hintStyle: TextStyle(
                            fontSize: w*0.055,
                            fontWeight: FontWeight.w500,
                          ),
                          prefixIcon: Container(
                              width: w*0.02,
                              height: w*0.02,
                              child: Center(child: SvgPicture.asset(icon.mail))),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: w*0.12,),
                TextFormField(
                  controller: passwordController,

                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  obscureText: hide==true?true:false,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if(!passwordValidation.hasMatch(value!)){
                      return "Enter valid password";
                    }
                    else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(w*0.03)),
                    labelText: "Password",
                    hintText: "Password",
                    hintStyle: TextStyle(
                        fontSize: w*0.055,
                        fontWeight: FontWeight.w500),
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
                SizedBox(height: w*0.02,),
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
                      side: BorderSide(
                        width: w*0.007,
                        color: colorPage.secondaryColor
                      ),
                    ),
                    Text("Remember me",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: w*0.04,
                      ),)
                  ],
                ),
                SizedBox(height: w*0.06,),

                InkWell(
                  onTap: () {
                    if (mailController.text != "" &&
                        passwordController.text != ""&&
                        formKey.currentState!.validate()) {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>helloBolu(),));
                    }
                    else {
                      mailController.text == "" ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please enter your email"))) :
                      passwordController.text == "" ? ScaffoldMessenger.of(context).
                      showSnackBar(SnackBar(content: Text("Please enter your password"))) :
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
                      child: Text("Sign in",
                          style: TextStyle(
                              fontSize: w*0.050,
                              fontWeight: FontWeight.w600,
                              color: colorPage.firstColor
                          )),
                    ),
                  ),
                ),
                SizedBox(height: w*0.03,),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => password(),));
                  },
                  child: Text("Forgot the password?",
                  style: TextStyle(
                    color: colorPage.secondaryColor,
                    fontWeight: FontWeight.w600
                  ),),
                ),
                SizedBox(height: w*0.08,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Divider(
                        color: colorPage.fourthColor,
                        thickness: w*0.001,
                        endIndent: w*0.015,
                        indent: w*0.025,
                        // indent: w*0.11,
                      ),
                    ),
                    Text("or continue with",
                      style:TextStyle(
                        color: colorPage.sixthColor,
                        fontSize: w*0.045,
                        fontWeight: FontWeight.w500,
                      ) ,),
                    Expanded(
                      child: Divider(
                        color: colorPage.fourthColor,
                        thickness: w*0.001,
                        endIndent: w*0.012,
                        indent: w*0.01,
                        // indent: w*0.68,
                      ),
                    ),
                  ],


                ),
                SizedBox(height: w*0.08,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: w*0.12,
                      width: w*0.18,
                      decoration: BoxDecoration(
                          border: Border.all(width: w*0.001,color: colorPage.nineColor),
                          borderRadius: BorderRadius.circular(w*0.03)
                      ),
                      child: Center(child: SvgPicture.asset(imagePage.facebook,width: w*0.10,height: w*0.10,)),
                    ),
                    Container(
                      height: w*0.12,
                      width: w*0.18,
                      decoration: BoxDecoration(
                          border: Border.all(width: w*0.001,color: colorPage.nineColor),
                          borderRadius: BorderRadius.circular(w*0.03)
                      ),
                      child: Center(child: SvgPicture.asset(imagePage.google2,width: w*0.08,height: w*0.08,)),
                    ),
                    Container(
                      height: w*0.12,
                      width: w*0.18,
                      decoration: BoxDecoration(
                          border: Border.all(width: w*0.001,color: colorPage.nineColor),
                          borderRadius: BorderRadius.circular(w*0.03)
                      ),
                      child: Center(child: SvgPicture.asset(imagePage.apple,width: w*0.09,height: w*0.08,)),
                    ),
                  ],
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
