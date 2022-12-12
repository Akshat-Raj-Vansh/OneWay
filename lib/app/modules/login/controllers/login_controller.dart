import 'package:get/get.dart';
import 'package:oneway/app/routes/app_pages.dart';

class LoginController extends GetxController {
  @override
  void onInit() {
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

  void login() {
    Get.offNamed(Routes.TODO);
  }
}
