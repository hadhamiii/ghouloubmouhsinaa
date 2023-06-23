import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghouloubmouhsina/controller/home/aceil_controller.dart';
import 'package:ghouloubmouhsina/view/widget/home/logoappbarhome.dart';

class CustomAppBarHome extends GetView<AccueilControllerImp> {
  const CustomAppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      width: 200,
      child: Row(
        children: [
          Container(
            width: 50,
            padding: const EdgeInsets.only(right: 0),
            height: 50,
          ),
          const Spacer(
            flex: 2,
          ),
          Container(
            width: 65,
            margin: const EdgeInsets.only(right: 0),
            height: 65,
            child: const LogoAppBarHome(),
          )
        ],
      ),
    );
  }
}
