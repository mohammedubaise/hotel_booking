import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hotel_booking/account_creation.dart';
import 'package:hotel_booking/color_page.dart';
import 'package:hotel_booking/icon.dart';
import 'package:hotel_booking/image_page.dart';
import 'package:hotel_booking/loging_page.dart';
import 'package:hotel_booking/profile_page.dart';

import 'main.dart';

class signing extends StatefulWidget {
  const signing({super.key});

  @override
  State<signing> createState() => _signingState();
}

class _signingState extends State<signing> {
  String? userEmail;
  final GoogleSignIn googleSignIn =GoogleSignIn();
  Future<UserCredential?>signInWithGoogle()async{
    final GoogleSignInAccount? googleSignInAccount=await googleSignIn.signIn();
    final GoogleSignInAuthentication googleSignInAuthentication =await googleSignInAccount!.authentication;
    final OAuthCredential credential =GoogleAuthProvider.credential(accessToken:googleSignInAuthentication.accessToken,idToken: googleSignInAuthentication.idToken);

    UserCredential userCredential =await FirebaseAuth.instance.signInWithCredential(credential);
    userEmail = userCredential.user!.email;
    print(userCredential.user!.displayName);
    print(userCredential.user!.email);
    // print(userCredential.user!.metadata);
    var data =await FirebaseFirestore.instance.collection("users").where("email",isEqualTo:userEmail ).get();
    if(data.docs.isEmpty) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => profile(signin: true,),));
    }else{
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => loging(),), (route) => false);
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPage.firstColor,
        appBar: AppBar(
        backgroundColor: colorPage.firstColor,
        elevation: 0,
        // leading: Center(child: SvgPicture.asset(icon.arrow,height:w* 0.09,width:w* 0.09,)),
        ),
    body:
      Padding(
        padding:  EdgeInsets.all(w*0.03),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: w*0.18,),
            Center(
              child: Text("Let's you in",
              style:TextStyle(
                fontSize: w*0.14,
                fontWeight: FontWeight.w700,
              )),
            ),
            SizedBox(height: w*0.15,),
            Container(
              height: w*0.8,
              width: w*1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [

                  Container(
                    height: w*0.15,
                    width: w*0.8,
                    decoration: BoxDecoration(
                      border: Border.all(color: colorPage.fifthColor,width: w*0.001),
                      borderRadius: BorderRadius.circular(w*0.03)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                                child: SvgPicture.asset(imagePage.facebook),
                        backgroundColor: Colors.transparent,
                            radius: w*0.06,

                        ),
                        Text("Continue with Facebook",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: colorPage.thirdColor,
                          fontSize: w*0.045,
                        ),)



                      ],
                    ),
                  ),
                  InkWell(
                    onTap:() {
                      signInWithGoogle();

                    },
                    child: Container(
                      height: w*0.15,
                      width: w*0.8,
                      decoration: BoxDecoration(
                        border: Border.all(color: colorPage.fifthColor,width: w*0.001),
                        borderRadius: BorderRadius.circular(w*0.03)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                                  child: SvgPicture.asset(imagePage.google),
                          backgroundColor: Colors.transparent,
                              radius: w*0.04,

                          ),
                          SizedBox(width: w*0.03,),
                          Text("Continue with Google",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: colorPage.thirdColor,
                            fontSize: w*0.045,
                          ),)



                        ],
                      ),
                    ),
                  ),

                  Container(
                    height: w*0.15,
                    width: w*0.8,
                    decoration: BoxDecoration(
                      border: Border.all(color: colorPage.fifthColor,width: w*0.001),
                      borderRadius: BorderRadius.circular(w*0.03)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                                child: SvgPicture.asset(imagePage.apple),
                        backgroundColor: Colors.transparent,
                            radius: w*0.08,


                        ),
                        Text("Continue with Apple",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: colorPage.thirdColor,
                          fontSize: w*0.045,
                        ),)



                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: w*0.09,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Divider(
                    color: colorPage.fourthColor,
                    thickness: w*0.001,
                    endIndent: w*0.015,
                    indent: w*0.10,
                    // indent: w*0.11,
                  ),
                ),
                Text("or",
                  style:TextStyle(
                    color: colorPage.sixthColor,
                    fontSize: w*0.045,
                    fontWeight: FontWeight.w500,
                  ) ,),
                Expanded(
                  child: Divider(
                    color: colorPage.fourthColor,
                    thickness: w*0.001,
                    endIndent: w*0.09,
                    indent: w*0.01,
                    // indent: w*0.68,
                  ),
                ),
              ],


            ),
            SizedBox(height: w*0.08,),
            Container(
              margin: (EdgeInsets.only(left: w*0.07)),
              height: w*0.15,
              width: w*0.8,
              decoration:
              BoxDecoration(
                borderRadius:BorderRadius.circular(w*0.08),
                color: colorPage.secondaryColor,
              ),
              child:InkWell(
                onTap: () {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => loging(),), (route) => false);
                },
                child: Center(
                  child: Text("Sign in with password",
                      style: TextStyle(
                          color: colorPage.firstColor,
                        fontSize: w*0.045,
                        fontWeight: FontWeight.w500,
                      ),),
                ),
              )),

            SizedBox(height: w*0.10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text("Don't have an account?",
                style: TextStyle(
                  color: colorPage.fourthColor,
                  fontWeight: FontWeight.w400,
                  fontSize: w*0.03,
                ),),
                SizedBox(width: w*0.02,),

                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => profile(signin: false,),));
                    },
                    child: Text("Sign up",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: colorPage.secondaryColor,
                    ),),
                  ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
