import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghouloubmouhsina/controller/home/homescreencontroller.dart';
import 'package:ghouloubmouhsina/core/constant/color.dart';
import 'package:ghouloubmouhsina/view/widget/home/custombuttomappabarhome.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => Scaffold(
              floatingActionButton: FloatingActionButton(
                  backgroundColor: AppColor.kPrimaryColor,
                  onPressed: () {},
                  child: const Icon(Icons.front_hand_rounded)),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              bottomNavigationBar: const CustomBottomAppBarHome(),
              body: controller.listPage.elementAt(controller.currentpage),
            ));
  }
}
