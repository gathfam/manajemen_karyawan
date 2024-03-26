import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:manajemen_karyawan/app/modules/widgets/button.dart';

import '../controllers/on_boarding_controller.dart';

class OnBoardingView extends GetView<OnBoardingController> {
  const OnBoardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: 1.sh,
      width: 1.sw,
      padding: EdgeInsets.all(20.sp),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          width: 1.sw,
          height: 1.sw,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/onBoardingAssets.png'))),
        ),
        SizedBox(
          width: 0.9.sw,
          child: Wrap(
            alignment: WrapAlignment.center,
            children: [
              Text(
                "Welcome",
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                "Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates porro reprehenderit iusto suscipit aperiam.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w300),
              )
            ],
          ),
        ),
        SizedBox(
            width: 0.9.sw,
            child: CustomButton(
                outlineVariant: true,
                title: "Login",
                onPressed: () {
                  Get.toNamed("/login");
                })),
        Text(
          "Login as Guest",
          style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w300),
        ),
      ]),
    ));
  }
}
