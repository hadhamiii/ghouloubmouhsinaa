import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghouloubmouhsina/view/screen/document/document.dart';
import 'package:ghouloubmouhsina/view/screen/document/items.dart';
import 'package:ghouloubmouhsina/view/screen/home/accueil.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int currentpage);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentpage = 0;

  List<Widget> listPage = [
    const Accueil(),
    const Document(),
    const Items(),
    const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Center(child: Text("Favorite"))],
    )
  ];

  List titlebottomappbar = [
    {"title": "الرئيسية", "icon": Icons.home},
    {"title": "الملفات", "icon": Icons.document_scanner_rounded},
    {"title": "الحملة", "icon": Icons.campaign},
    {"title": "حسابي", "icon": Icons.person}
  ];

  @override
  changePage(int i) {
    currentpage = i;
    update();
  }
}
