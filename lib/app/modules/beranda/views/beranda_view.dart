import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../controllers/beranda_controller.dart';

class BerandaView extends GetView<BerandaController> {
  const BerandaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _cards = [
      {"icon": FontAwesomeIcons.tableList, "route": ""},
      {"icon": FontAwesomeIcons.moneyBill1Wave, "route": ""},
      {"icon": FontAwesomeIcons.thumbtack, "route": ""},
      {"icon": FontAwesomeIcons.tasks, "route": ""}
    ];

    return Scaffold(
        body: Wrap(
      children: [
        Container(
          height: 1.sh,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/bg-beranda.jpg"),
                  fit: BoxFit.cover,
                  alignment: Alignment.center)),
          padding: EdgeInsets.symmetric(horizontal: 20.0.sp, vertical: 30.sp),
          child: Wrap(
            // alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            direction: Axis.vertical,
            spacing: 25.sp,
            children: [
              SizedBox(
                // height: 40.h,
                width: 0.8.sw,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.notifications_none_outlined,
                      size: 20.sp,
                    )
                  ],
                ),
              ),
              SizedBox(
                  height: 100.r,
                  width: 100.r,
                  child: CircleAvatar(
                    child: Icon(
                      Icons.person,
                      size: 50.sp,
                    ),
                  )),
              SizedBox(
                width: 0.9.sw,
                child: Padding(
                  padding: EdgeInsets.all(25.0.sp),
                  child: Wrap(
                    runSpacing: 25.sp,
                    alignment: WrapAlignment.spaceBetween,
                    children: List.generate(_cards.length,
                        (index) => CardMenu(icon: _cards[index]['icon'])),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}

Widget CardMenu({icon}) {
  return Container(
    width: 120.r,
    height: 120.r,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(25.sp),
      boxShadow: const [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 7,
          spreadRadius: 0.5,
          offset: Offset(0, 2),
        ),
      ],
    ),
    child: Padding(
      padding: EdgeInsets.all(10.0.sp),
      child: Center(
        child: FaIcon(
          icon,
          size: 36.sp,
          color: Color(0xFF09648C),

          // size: 32.sp,
        ),
      ),
    ),
  );
}
