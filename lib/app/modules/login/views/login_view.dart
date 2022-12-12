import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/strings.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30.h),
            Text(
              APP_NAME,
              style: GoogleFonts.passionsConflict(
                fontSize: 48.sp,
                color: kPrimaryColor,
              ),
            ),
            Text(
              APP_SUB,
              style: GoogleFonts.ibmPlexMono(
                fontSize: 8.sp,
                color: kOffWhite,
              ),
            ),
            SizedBox(height: 30.h),
            TextButton(
              child: Text(
                "Login using Google Account",
                style: GoogleFonts.ibmPlexMono(
                  fontSize: 8.sp,
                  color: kOffWhite,
                ),
              ),
              onPressed: () {
                controller.login();
              },
            ),
            SizedBox(height: 1.h),
            Text(
              "We'll be using local sql db for storage.",
              style: GoogleFonts.ibmPlexMono(
                fontSize: 6.sp,
                color: kOffWhite,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
