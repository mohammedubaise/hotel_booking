import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking/Presidential_hotel.dart';
import 'package:hotel_booking/account_creation.dart';
import 'package:hotel_booking/all_hotel.dart';
import 'package:hotel_booking/bookingPage.dart';
import 'package:hotel_booking/home_page.dart';
import 'package:hotel_booking/myBookmark.dart';
import 'package:hotel_booking/name_reservation.dart';
import 'package:hotel_booking/password.dart';
import 'package:hotel_booking/person_page.dart';
import 'package:hotel_booking/pinput.dart';
import 'package:hotel_booking/profile_page.dart';
import 'package:hotel_booking/hello.dart';
import 'package:hotel_booking/select_date.dart';
import 'package:hotel_booking/signing_page.dart';
import 'package:hotel_booking/splash_screen.dart';

import 'firebase_options.dart';
var w;
var h;
Future<void> main()async {
  WidgetsFlutterBinding.ensureInitialized(

  );
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(myApp());
}
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    w=MediaQuery.of(context).size.width;
    h=MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: MaterialApp(
theme: ThemeData(
      textTheme:GoogleFonts.urbanistTextTheme()
),
        debugShowCheckedModeBanner: false,
        home:splashScreen(),
      ),
    );
  }
}
