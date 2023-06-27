// ignore_for_file: file_names

import 'package:flutter/material.dart'
    show
        BuildContext,
        Colors,
        Column,
        Expanded,
        SafeArea,
        Scaffold,
        StatelessWidget,
        Widget;
import 'package:get/get.dart';
import 'package:ghouloubmouhsina/controller/OnBoardingController.dart';
import 'package:ghouloubmouhsina/view/widget/onboarding/custombutton.dart';
import 'package:ghouloubmouhsina/view/widget/onboarding/dotcontroller.dart';
import 'package:ghouloubmouhsina/view/widget/onboarding/CustomSlider.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());

    return const Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: CustomSliderOnBoarding(),
              ),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      CustomDotControllerOnBoarding(),
                      CustomButtonOnBoarding(),
                    ],
                  ))
            ],
          ),
        ));
  }
}
