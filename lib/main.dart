import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:oneway/app/services/theme_service.dart';
import 'package:oneway/utils/themes.dart';
import 'package:sizer/sizer.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(Sizer(
    builder: (context, orientation, deviceType) => GetMaterialApp(
      title: "OneWay",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      theme: Themes.dark,
      themeMode: ThemeService().theme,
    ),
  ));
}
