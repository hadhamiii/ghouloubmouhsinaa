import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghouloubmouhsina/core/constant/color.dart';
import 'package:ghouloubmouhsina/core/constant/imageasset.dart';

class Bankily extends StatelessWidget {
  const Bankily({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.dialog(Container(
          margin: const EdgeInsets.only(
              top: 300, left: 100, right: 100, bottom: 300),
          decoration: BoxDecoration(
              color: AppColor.backgroundcolor,
              borderRadius: BorderRadius.circular(20)),
          child: const Center(
              child: Text(
            "34931505",
            style: TextStyle(color: AppColor.black, fontSize: 15),
          )),
        ));
      },
      child: Image.asset(
        ImageAsset.bankily,
        height: 70,
        width: 200,
        fit: BoxFit.fill,
      ),
    );
  }
}
