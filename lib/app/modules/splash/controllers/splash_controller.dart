import 'dart:async';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:oneway/app/routes/app_pages.dart';

class SplashController extends GetxController {
  RxBool isLoading = false.obs;
  @override
  void onInit() {
    stopLoading();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  stopLoading() {
    isLoading(true);
    Timer(Duration(seconds: 3), () {
      log('Loading Home Page');
      // TODO: Add Login Screen after this with Google Login option.
      // TODO: Store credential using SQL database for now but store them to cloud later
      isLoading(false);
      Get.offNamed(Routes.LOGIN);
    });
  }
}
