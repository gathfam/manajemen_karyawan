import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:manajemen_karyawan/app/modules/widgets/button.dart';
import 'package:manajemen_karyawan/app/modules/widgets/textfield.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/LoginBanner.jpg",
              ),
              fit: BoxFit.cover,
              alignment: Alignment.topCenter)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(30.sp),
            child: Text(
              "LOGIN",
              style: TextStyle(
                  fontSize: 24.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 1.sh,
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(20.sp),
                  decoration: BoxDecoration(
                      color: Color(0xFFD9D9D9),
                      borderRadius: BorderRadius.circular(25.sp)),
                  child: Wrap(
                      alignment: WrapAlignment.center,
                      runSpacing: 20.sp,
                      children: [
                        InputField(label: "Email"),
                        InputField(label: "Password"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                Transform.scale(
                                  scale: 0.7.sp,
                                  child: Checkbox(
                                    value: true,
                                    onChanged: (bool? value) {
                                      print(value);
                                    },
                
                                    // Blue color
                                    activeColor:
                                        Color(0xFF09648C), // Checked color
                                    checkColor:
                                        Colors.white, // Check icon color
                                    fillColor: MaterialStateProperty
                                        .resolveWith<Color>((states) {
                                      if (states
                                          .contains(MaterialState.selected)) {
                                        return Color(
                                            0xFF09648C); // Fill color when checked
                                      }
                                      return Color(
                                          0xFF09648C); // Default fill color
                                    }),
                                  ),
                                ),
                                Text(
                                  "Remember Me",
                                  style: TextStyle(
                                      fontSize: 10.sp, color: Colors.black),
                                )
                              ],
                            ),
                            Text(
                              "Forgot Password?",
                              style: TextStyle(
                                  fontSize: 10.sp, color: Color(0xFF09648C)),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 1.sw,
                          child: CustomButton(title: "Login", onPressed: () {}),
                        ),
                        Wrap(
                          alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          spacing: 5.sp,
                          children: [
                            Text(
                              "Don't have an account?",
                              style: TextStyle(
                                  fontSize: 10.sp, color: Colors.black),
                            ),
                            Text(
                              "Sign up",
                              style: TextStyle(
                                  fontSize: 10.sp, color: Color(0xFF09648C)),
                            )
                          ],
                        )
                      ]),
                ),
                // Positioned(
                //   top: -150,
                //   child: Image(
                //       image: AssetImage("assets/LoginAssets.png"),
                //       fit: BoxFit.cover),
                // ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
