import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oneway/utils/colors.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:oneway/utils/strings.dart';
import 'package:sizer/sizer.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
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
            Obx(
              () => controller.isLoading.value
                  ? SpinKitThreeBounce(
                      size: 6.w,
                      color: kPrimaryColor,
                    )
                  : const SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
