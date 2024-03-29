// ignore_for_file: avoid_renaming_method_parameters

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghouloubmouhsina/core/constant/routes.dart';
import 'package:ghouloubmouhsina/view/screen/document/document.dart';
import 'package:ghouloubmouhsina/view/screen/document/items.dart';
import 'package:ghouloubmouhsina/view/screen/home/accueil.dart';
import 'package:ghouloubmouhsina/view/screen/setting/profile.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int currentpage);
  goToHand();
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentpage = 0;

  List<Widget> listPage = [
    const Accueil(),
    const Document(),
    const Items(),
    const Profile(),
  ];

  List titlebottomappbar = [
    {"title": "الرئيسية", "icon": Icons.home},
    {"title": "الملفات", "icon": Icons.document_scanner_rounded},
    {"title": "صدقة جارية", "icon": Icons.campaign},
    {"title": "حسابي", "icon": Icons.person}
  ];

  @override
  changePage(int i) {
    currentpage = i;
    update();
  }

  @override
  goToHand() {
    Get.toNamed(AppRoutes.handbutton);
  }
}
