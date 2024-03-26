import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget CustomButton({outlineVariant = false, title = "", onPressed}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: outlineVariant
            ? Colors.transparent
            : Color(0xFF09648C), // Blue color
        padding: EdgeInsets.symmetric(
            horizontal: 35.sp, vertical: 10.sp), // Expanded width
        shape: RoundedRectangleBorder(
          side: outlineVariant
              ? BorderSide(width: 1.2.sp, color: Color(0xFF09648C))
              : BorderSide.none,
          borderRadius: BorderRadius.circular(25).w, // 15 border radius
        ),

        elevation: 0, // Elevation effect
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(
            fontSize: 10.sp,
            color: outlineVariant ? Color(0xFF09648C) : Colors.white),
      ));
}
