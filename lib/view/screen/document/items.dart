import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghouloubmouhsina/controller/home/itemscontroller.dart';
import 'package:ghouloubmouhsina/core/constant/color.dart';
import 'package:ghouloubmouhsina/view/widget/home/customappbar.dart';
import 'package:ghouloubmouhsina/view/widget/itmes/customlistitems.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsControllerImp());

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            backgroundColor: AppColor.kPrimaryColor,
            title: CustomAppBar(
                titleappbar: "", onPressedIcon: () {}, onPressedSearch: () {}),
          ),
          const SliverToBoxAdapter(
            child: CustomListItems(),
          )
        ],
      ),
    );
  }
}
