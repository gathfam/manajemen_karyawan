import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // No need to initialize the controller here if using GetView
    return Scaffold(
      backgroundColor: Color(0xFFF6F1F1),
      body: Obx(() => SafeArea(
            child: controller.pages[controller.currentIndex.value],
          )),
      bottomNavigationBar: Obx(() => Container(
            decoration: BoxDecoration(
              color: Color(0xFF09648C),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.sp),
                  topRight: Radius.circular(20.sp)),
            ),
            child: SalomonBottomBar(
                unselectedItemColor: Colors.black45,
                itemShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      20.sp), // Adjust the border radius as needed
                ),
                margin:
                    EdgeInsets.symmetric(horizontal: 30.sp, vertical: 5.sp).w,
                currentIndex: controller.currentIndex.value,
                onTap: controller.indexChange,
                itemPadding:
                    EdgeInsets.symmetric(vertical: 5.sp, horizontal: 15.sp),
                items: [
                  SalomonBottomBarItem(
                    icon: Icon(
                      Icons.home,
                      size: 18.sp,
                    ),
                    title: Text(
                      "Beranda",
                      style: TextStyle(fontSize: 12.sp),
                    ),
                    selectedColor: Colors.white,
                  ),
                  SalomonBottomBarItem(
                    icon: Icon(
                      Icons.person,
                      size: 18.sp,
                    ),
                    title: Text("Profil", style: TextStyle(fontSize: 12.sp)),
                    selectedColor: Colors.white,
                  ),
                ]),
          )),
    );
  }
}
