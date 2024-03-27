import 'package:flutter/material.dart';
import 'package:hotel_booking/all_booking.dart';
import 'package:hotel_booking/all_hotelhome.dart';
import 'package:hotel_booking/all_profile.dart';
import 'package:hotel_booking/all_search.dart';
import 'package:hotel_booking/color_page.dart';
import 'package:hotel_booking/person_page.dart';
import 'package:hotel_booking/search_page.dart';

import 'bookingPage.dart';
import 'home_page.dart';

class allHotel extends StatefulWidget {
  const allHotel({super.key});

  @override
  State<allHotel> createState() => _allHotelState();
}

class _allHotelState extends State<allHotel> {
  @override
  int selectIndex=0;
  List pages=[
  allHotelHome(),
    allHotelSearch(),
    allBookingPage(),
    allProfile()
  ];
@override
  Widget build(BuildContext context) {
    return Scaffold(
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
