import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_booking/color_page.dart';
import 'package:hotel_booking/icon.dart';
import 'package:hotel_booking/person_page.dart';

import 'main.dart';

class editProfile extends StatefulWidget {
  const editProfile({super.key});

  @override
  State<editProfile> createState() => _editProfileState();
}

class _editProfileState extends State<editProfile> {
  final formKey=GlobalKey<FormState>();
  TextEditingController   mailController =TextEditingController();
  TextEditingController   fullName =TextEditingController();
  TextEditingController   nickName =TextEditingController();
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
  String? dropdownValue;
  var genders=[
    "Male",
    "Female"
  ];
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
        title: Text("Edit Profile",
          style: TextStyle(
              fontSize: w*0.07,
              fontWeight: FontWeight.w700,
              color: colorPage.thirdColor
          ),),
      ),
      body:  SingleChildScrollView(
        child: Container(
          height: h*0.85,
          width: w*1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: h*0.6,
                width: w*1,

                margin: EdgeInsets.all(w*0.03),
                child:Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // SizedBox(height: w*0.20,),
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
                              )
                          )


                      ),
                      TextFormField(
                          controller: nickName,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                              labelText: "Nickname",
                              labelStyle: TextStyle(
                                fontSize: w*0.045,
                                fontWeight: FontWeight.w700,
                              ),

                              border: OutlineInputBorder(
                                borderSide: BorderSide(width: w*0.1),
                                borderRadius: BorderRadius.circular(w*0.03),
                              ),
                              hintText: "Nickname",
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
              // SizedBox(height: w*0.12,),
              InkWell(
                onTap: () {
                  if (
                  fullName.text !=""&&
                      nickName.text !=""&&
                      dateofBirth.text !=""&&
                      mailController.text != "" &&
                      phoneNumber.text !=""&&
                      dropdownValue!=null&&
                      formKey.currentState!.validate()) {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => personPage(name: fullName.text, email: mailController.text),));
                  }
                  else {
                    fullName.text == "" ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please enter your FullName"))) :
                    nickName.text == "" ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please enter your NickName"))) :
                    dateofBirth.text == "" ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please enter your DOB"))) :
                    mailController.text == "" ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please enter your email"))) :
                    phoneNumber.text == "" ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please enter your PhoneNumber"))) :
                    dropdownValue==null? ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please select your Gender"))) :
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Please enter your valid details")));
                  }
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
                      "Update",
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
      ),
    );
  }
}
