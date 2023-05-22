// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghouloubmouhsina/controller/OnBoardingController.dart';
import 'package:ghouloubmouhsina/core/constant/color.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 140, vertical: 5),
        onPressed: () {
          controller.next();
        },
        child: const Text("التالي",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              fontFamily: 'Cairo-Bold.ttf',
            )),
        color: AppColor.kPrimaryColor,
        textColor: Colors.white,
        shape: const StadiumBorder(),
      ),
    );
  }
}
