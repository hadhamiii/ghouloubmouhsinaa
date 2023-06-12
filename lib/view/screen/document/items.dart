import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghouloubmouhsina/controller/home/itemscontroller.dart';
import 'package:ghouloubmouhsina/view/widget/home/customappbar.dart';
import 'package:ghouloubmouhsina/view/widget/itmes/customlistitems.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsControllerImp());

    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(15),
      child: ListView(children: [
        CustomAppBar(
            titleappbar: "", onPressedIcon: () {}, onPressedSearch: () {}),
        const SizedBox(height: 20),
        const CustomListItems()
      ]),
    ));
  }
}
