import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget InputField({label = ""}) {
  return TextField(
    decoration: InputDecoration(
      // label: Text(label),
      hintText: label,
      contentPadding: EdgeInsets.symmetric(vertical: 6.sp, horizontal: 0.sp).w,
    ),
    style: TextStyle(color: Colors.black, fontSize: 12.sp),
  );
}
