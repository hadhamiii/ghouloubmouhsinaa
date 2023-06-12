// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghouloubmouhsina/controller/document/campagnecontroller.dart';
import 'package:ghouloubmouhsina/core/constant/color.dart';

class CustomCardHome extends StatelessWidget {
  final String Title;
  final String body;
  final String button;
  const CustomCardHome(
      {Key? key, required this.Title, required this.body, required this.button})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    CampagneControllerImp controller = Get.put(CampagneControllerImp());
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Stack(children: [
        Container(
            height: 155,
            decoration: BoxDecoration(
                color: AppColor.kPrimaryColor,
                borderRadius: BorderRadius.circular(20)),
            child: ListTile(
              title: Text(
                Title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "QuranSurah1-mLKO5",
                    fontSize: 30,
                    color: AppColor.black),
              ),
              subtitle: Text(
                body,
                style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 22,
                    color: AppColor.backgroundcolor),
              ),
            )),
        Positioned(
          top: -20,
          right: -20,
          child: Container(
            height: 160,
            width: 160,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 51, 214, 138),
                borderRadius: BorderRadius.circular(160)),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  color: AppColor.kPrimaryColor),
              width: 20,
              height: 20,
              margin: const EdgeInsets.all(50),
              padding: const EdgeInsets.only(top: 15),
              child: InkWell(
                onTap: () {
                  controller.goToCampagne();
                },
                child: Text(
                  button,
                  style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    fontFamily: "Cairo-Bold",
                    fontSize: 12,
                    color: AppColor.backgroudlightcolor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
