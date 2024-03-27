import 'dart:ui';

import 'package:flutter/cupertino.dart';

class unbordingScreen {
    String image;
    String title;
    String description;
    unbordingScreen({required this.image,required this.title,required this.description});
    }
    List contents=[
      unbordingScreen(
          image:"assets/images/aeroplane.png",
          title: "Travel safely, comfortably, & easily",
          description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,"
              " sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      ),
        unbordingScreen(
            image:"assets/images/pics.png",
            title: "Find the best hotels for your vacation",
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,"
                " sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
        unbordingScreen(
            image: "assets/images/sea.png",
            title: "Let’s discover the world with us",
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,"
        " sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
    ];



