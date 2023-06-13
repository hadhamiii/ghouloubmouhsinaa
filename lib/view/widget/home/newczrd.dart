import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghouloubmouhsina/controller/document/campagnecontroller.dart';
import 'package:ghouloubmouhsina/core/constant/imageasset.dart';

class newcard extends StatelessWidget {
  const newcard({super.key});

  @override
  Widget build(BuildContext context) {
    CampagneControllerImp controller = Get.put(CampagneControllerImp());
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      height: 200,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: InkWell(
        onTap: () {
          controller.goToCampagne();
        },
        child: Image.asset(
          ImageAsset.card,
          height: 100,
          width: 150,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
