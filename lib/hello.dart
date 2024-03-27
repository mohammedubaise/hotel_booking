import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_booking/bookingPage.dart';
import 'package:hotel_booking/color_page.dart';
import 'package:hotel_booking/home_page.dart';
import 'package:hotel_booking/icon.dart';
import 'package:hotel_booking/image_page.dart';
import 'package:hotel_booking/myBookmark.dart';
import 'package:hotel_booking/person_page.dart';
import 'package:hotel_booking/search_page.dart';

import 'main.dart';

class helloBolu extends StatefulWidget {
  const helloBolu({super.key});

  @override
  State<helloBolu> createState() => _helloBoluState();
}

class _helloBoluState extends State<helloBolu> {
  @override
  int selectIndex=0;
  List pages=[
    homePage(name: '',),
    searchPage(),
    bookingPage(),
    personPage(name: 'Kezia Ajibastin',email: 'kezia_ajibastin@domain.com',),


  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPage.firstColor,

      body: pages[selectIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: colorPage.secondaryColor,
          unselectedItemColor: colorPage.twelve,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: selectIndex,
          onTap: (value) {
            selectIndex=value!;
            setState(() {

            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.event_note_outlined),
                label: "Booking"),
            BottomNavigationBarItem
              (icon: Icon(Icons.person_2_outlined),
                label: "Profile"),
          ]),
    );
  }
}
