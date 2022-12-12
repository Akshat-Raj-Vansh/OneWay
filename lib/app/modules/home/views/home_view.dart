import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oneway/utils/colors.dart';
import 'package:oneway/utils/strings.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/bottomnav.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              height: 25.h,
              width: 100.w,
              color: kBackgroundColor,
              child: Column(
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Hi, Arveus!",
                    style: GoogleFonts.ibmPlexMono(
                      fontSize: 24.sp,
                      color: kPrimaryColor,
                    ),
                  ),
                  Text(
                    APP_SUB,
                    style: GoogleFonts.ibmPlexMono(
                      fontSize: 8.sp,
                      color: kPrimaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Text(
              "This is where body of the screen will mainly come.",
              style: GoogleFonts.ibmPlexMono(
                fontSize: 8.sp,
                color: kPrimaryColor,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 10.h,
              width: 100.w,
              color: kBackgroundColor,
              child: Center(
                child: Text(
                  "This is where bottom navigation bar will come.",
                  style: GoogleFonts.ibmPlexMono(
                    fontSize: 8.sp,
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
