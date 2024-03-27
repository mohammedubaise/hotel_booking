import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_booking/color_page.dart';
import 'package:hotel_booking/icon.dart';
import 'package:hotel_booking/image_page.dart';
import 'package:hotel_booking/loging_page.dart';
import 'package:image_picker/image_picker.dart';

import 'Model/userModel.dart';
import 'main.dart';
User? user;
class profile extends StatefulWidget {
  final bool signin;

  const profile( {super.key, required this.signin});

  @override
  State<profile> createState() => _profileState();
}


class _profileState extends State<profile> {
  final formKey=GlobalKey<FormState>();
  TextEditingController   mailController =TextEditingController();
  TextEditingController   fullName =TextEditingController();
  TextEditingController   passwordController =TextEditingController();
  TextEditingController   dateofBirth =TextEditingController();
  TextEditingController   phoneNumber =TextEditingController();
  final passwordValidation=RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  final mailValidation=RegExp( r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
  r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
  r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
  r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
  r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
  r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
  r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])');
  String imageUrl ='https://th.bing.com/th/id/OIP.Uvjo8TfNWuFgEikroJdHOAHaHa?rs=1&pid=ImgDetMain';
  String? dropdownValue;
  var genders=[
    "Male",
    "Female"
  ];
  @override
  void initState() {
    // TODO: implement initState
    if (widget.signin == true && widget.signin == true) {
      mailController.text = user!.email.toString();
      fullName.text = user!.displayName.toString();
      imageUrl = user!.photoURL.toString();
    }
    super.initState();
  }
  var file;

  pickFile(ImageSource) async {
    final imgFile = await ImagePicker.platform.pickImage(source: ImageSource);
    file = File(imgFile!.path);
    if (mounted) {
      setState(() {
        file = File(imgFile.path);
      });
    }
  }
  @override

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
        title: Text("Fill Your Profile",
        style: TextStyle(
          fontSize: w*0.07,
          fontWeight: FontWeight.w700,
          color: colorPage.thirdColor
        ),),
      ),
body: SingleChildScrollView(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: h*0.7,
        width: w*1,
        margin: EdgeInsets.all(w*0.03),
        child:Form(
          key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
  // SizedBox(height: w*0.20,),
  Stack(
    children: [
      Center(
        child: Container(
          height: w*0.45,
          width: w*0.4,

        ),
      ),
      file != null
          ? Center(
        child: CircleAvatar(
          radius: w*0.2,
          backgroundImage: FileImage(file),
        ),
      )
          : Center(
        child: CircleAvatar(
          radius: w*0.2,
          backgroundImage: AssetImage(imagePage.profilePic),
        ),
      ),
      Positioned(
        top: w*0.31,
        left: w*0.60,
        child: InkWell(
          onTap: () {
            showModalBottomSheet(
              showDragHandle: true,
              backgroundColor: colorPage.firstColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(w * 0.09),
                      topLeft: Radius.circular(w * 0.09))),
              context: context,
              builder: (context) {
                return Container(
                  height: w * 0.25,
                  width: w * 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Choose A File From?",
                          style: TextStyle(
                              fontSize: w*0.04,
                              fontWeight: FontWeight.w900
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                              pickFile(ImageSource.camera);
                            },
                            child: Container(
                              height: w * 0.08,
                              width: w * 0.2,
                              decoration: BoxDecoration(
                                  color: colorPage.secondaryColor,
                                  borderRadius:
                                  BorderRadius.circular(w * 0.03)),
                              child: Icon(Icons.camera_alt_outlined,
                                  color: colorPage.firstColor),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                              pickFile(ImageSource.gallery);
                            },
                            child: Container(
                              height: w * 0.08,
                              width: w * 0.2,
                              decoration: BoxDecoration(
                                  color: colorPage.secondaryColor,
                                  borderRadius:
                                  BorderRadius.circular(w * 0.03)),
                              child: Icon(Icons.image_outlined,color: colorPage.firstColor),
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                );
              },
            );
          },
          child: Container(
            width: w*0.08,
            height: w*0.08,
            decoration: BoxDecoration(
                color: colorPage.secondaryColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(w*0.03), topRight: Radius.circular(w*0.03), bottomRight: Radius.circular(w*0.03))
            ),
            child: Icon(
              Icons.edit,
              color: colorPage.firstColor,
            ),
          ),
        ),
      )
    ],
  ),
      TextFormField(
        controller: fullName,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.next,
decoration: InputDecoration(
      labelText: "Full Name ",
    labelStyle: TextStyle(
      fontSize: w*0.045,
      fontWeight: FontWeight.w700,
    ),

        border: OutlineInputBorder(
          borderSide: BorderSide(width: w*0.1),
borderRadius: BorderRadius.circular(w*0.03),
        ),
      hintText: "Full Name",
      hintStyle: TextStyle(
        fontSize: w*0.045,
        fontWeight: FontWeight.w700,
      ),

      ),
        onChanged: (value) {
          setState(() {
            fullName.text=value;
          });
        },


),
      TextFormField(
        controller: passwordController,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.next,
decoration: InputDecoration(
      labelText: "Password",
    labelStyle: TextStyle(
      fontSize: w*0.045,
      fontWeight: FontWeight.w700,
    ),

        border: OutlineInputBorder(
          borderSide: BorderSide(width: w*0.1),
borderRadius: BorderRadius.circular(w*0.03),
        ),
      hintText: "Password",
      hintStyle: TextStyle(
        fontSize: w*0.045,
        fontWeight: FontWeight.w700,
      )
      )


),
      TextFormField(
        controller: dateofBirth,
        keyboardType: TextInputType.datetime,
        textInputAction: TextInputAction.next,
decoration: InputDecoration(
      labelText: "Date of Birth",
    labelStyle: TextStyle(
      fontSize: w*0.045,
      fontWeight: FontWeight.w700,
    ),

        border: OutlineInputBorder(
          borderSide: BorderSide(width: w*0.1),
borderRadius: BorderRadius.circular(w*0.03),
        ),
      hintText: "Date of Birth",
      hintStyle: TextStyle(
        fontSize: w*0.045,
        fontWeight: FontWeight.w700,
      ),
  suffixIcon: Icon(Icons.calendar_month_outlined)
      )


),
  TextFormField(
    controller: mailController,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
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
          labelText: "Email",
      labelStyle: TextStyle(
        fontSize: w*0.045,
        fontWeight: FontWeight.w700,
      ),

          border: OutlineInputBorder(
            borderSide: BorderSide(width: w*0.1),
            borderRadius: BorderRadius.circular(w*0.03),
          ),
          hintText: "Email",
          hintStyle: TextStyle(
            fontSize: w*0.045,
            fontWeight: FontWeight.w700,
          ),
        suffixIcon: Container(
            width: w*0.02,
            height: w*0.02,
            child: Center(child: SvgPicture.asset(icon.mail))),
      ),

  ),
      TextFormField(
        controller:phoneNumber ,
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.next,
        // maxLength: 10,

        decoration: InputDecoration(
         labelText: "Phone Number",
          labelStyle: TextStyle(
            fontSize: w*0.045,
            fontWeight: FontWeight.w700,
          ),

        border: OutlineInputBorder(
          borderSide: BorderSide(width: w*0.1),
         borderRadius: BorderRadius.circular(w*0.03),
        ),
      hintText: "Phone Number",
      hintStyle: TextStyle(
        fontSize: w*0.045,
        fontWeight: FontWeight.w700,
      ),
    prefixIcon: CountryCodePicker(
      onChanged: print,
      // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
      initialSelection: 'IT',
      favorite: ['+39','FR'],
      // optional. Shows only country name and flag
      showCountryOnly: false,
      // optional. Shows only country name and flag when popup is closed.
      showOnlyCountryWhenClosed: false,
      // optional. aligns the flag and the Text left
      alignLeft: false,
    ),

      ),


),
  Container(
    height: w*0.17,
    width: w*1,
    decoration: BoxDecoration(
      border: Border.all(width: w*0.003,
        color: colorPage.eightColor,
      ),
      borderRadius: BorderRadius.circular(w*0.03),
    ),
    child: Padding(
      padding:  EdgeInsets.all(w*0.03),
      child: DropdownButton(
        isExpanded: true,
        hint: Text("Select Gender",
          style: TextStyle(
            fontSize: w*0.045,
            fontWeight: FontWeight.w700,
          ),),
        value: dropdownValue,
        underline:Container(
          height: w*0,
          width: w*0,
        ),
        items: genders.map((String? gender) {
          return DropdownMenuItem(
              value: gender,
              child: Text(gender!));
        }).toList(),
        onChanged: (newGender) {
          setState(() {
            dropdownValue=newGender;
          });
        },),
    ),
  )



],
        ),
        ),


      ),
      SizedBox(height: w*0.12,),
      InkWell(
        onTap: () {
    UsersModel userModelData=UsersModel(
    fullName: fullName.text,
    password: passwordController.text,
    email: mailController.text,
    dateofBirth: dateofBirth.text,
    phoneNumber: phoneNumber.text,
      gender: dropdownValue,
      image: imageUrl,

    );
    FirebaseFirestore.instance.collection("users").add(userModelData.toMap());
    // Navigator.push(context, MaterialPageRoute(builder: (context) => loging(),));


          // if (
          //     fullName.text !=""&&
          //     nickName.text !=""&&
          //     dateofBirth.text !=""&&
          //     mailController.text != "" &&
          //     phoneNumber.text !=""&&
          //         dropdownValue!=null&&
          //     formKey.currentState!.validate()) {
          //   Navigator.push(context, MaterialPageRoute(builder: (context) => loging(),));
          // }
          // else {
          //   fullName.text == "" ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please enter your FullName"))) :
          //   nickName.text == "" ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please enter your NickName"))) :
          //   dateofBirth.text == "" ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please enter your DOB"))) :
          //   mailController.text == "" ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please enter your email"))) :
          //   phoneNumber.text == "" ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please enter your PhoneNumber"))) :
          //       dropdownValue==null? ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please select your Gender"))) :
          //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          //       content: Text("Please enter your valid details")));
          // }
        },
        child: Container(
          height: w*0.15,
         width: w*0.9,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(w*0.15),
           color: colorPage.secondaryColor,

         ),
          child: Center(
            child: Text(
              "Sign in with Password",
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
),
    );
  }
}
