import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:manajemen_karyawan/app/modules/beranda/views/beranda_view.dart';
import 'package:manajemen_karyawan/app/modules/profil/views/profil_view.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final currentIndex = 0.obs;

  final List<Widget> pages = [
    BerandaView(),
    ProfilView(),
  ];

  void indexChange(index) {
    print(index);
    currentIndex.value = index;
  }

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
}
