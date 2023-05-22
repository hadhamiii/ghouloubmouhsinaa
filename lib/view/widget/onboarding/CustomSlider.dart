// ignore_for_file: file_names, deprecated_member_use, sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghouloubmouhsina/controller/OnBoardingController.dart';
import 'package:ghouloubmouhsina/data/datasource/static/static.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pagecontroller,
        onPageChanged: (val) {
          controller.onPageChanged(val);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(
              children: [
                Container(
                  child: const Image(
                    image: AssetImage("assets/images/logo.png"),
                  ),
                  width: 120,
                  height: 120,
                  padding: const EdgeInsets.all(20),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 400,
                  height: 230,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Image.asset(
                    onBoardingList[i].image!,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  onBoardingList[i].title!,
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  onBoardingList[i].body!,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ));
  }
}
