import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oneway/app/services/theme_service.dart';
import 'package:oneway/utils/colors.dart';
import 'package:sizer/sizer.dart';

import '../controllers/todo_controller.dart';

class TodoView extends GetView<TodoController> {
  const TodoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            log('onTap pressed');
            //  ThemeService().switchTheme();
          },
          child: IconButton(
            icon: const Icon(
              Icons.menu,
              size: 24,
            ),
            onPressed: () => Get.snackbar('Message', 'Will toggle login'),
          ),
        ),
        title: Text(
          'Today',
          style: GoogleFonts.ibmPlexMono(fontSize: 18.sp),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.arrow_drop_down,
              size: 24,
            ),
            onPressed: () => Get.snackbar('Message', 'Will toggle dates'),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white10, width: 1.5),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white10,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(
              label: 'Tasks',
              icon: Icon(Icons.edit),
            ),
            BottomNavigationBarItem(
              label: 'Health',
              icon: Icon(Icons.monitor_heart),
            ),
            BottomNavigationBarItem(
              label: 'Notes',
              icon: Icon(Icons.book),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: const [
            Text(
              'hello',
              style: TextStyle(color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
}
