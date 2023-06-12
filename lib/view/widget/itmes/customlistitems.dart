import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghouloubmouhsina/controller/document/lebeykcontroller.dart';
import 'package:ghouloubmouhsina/core/constant/color.dart';
import 'package:ghouloubmouhsina/core/constant/imageasset.dart';

class CustomListItems extends StatelessWidget {
  const CustomListItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LebeykControllerImp controller = Get.put(LebeykControllerImp());
    return Column(
      children: [
        InkWell(
            borderRadius: BorderRadius.circular(50),
            onTap: () {
              controller.goToLebeyk();
            },
            child: Card(
                color: AppColor.backgroudlightcolor,
                child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text("معهد لبيك كتاب اللَّهَ",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: AppColor.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(
                          height: 30,
                          width: 70,
                        ),
                        Image.asset(ImageAsset.logo,
                            height: 50, width: 100, fit: BoxFit.fill),
                      ],
                    )))),
        const SizedBox(
          height: 15,
        ),
        InkWell(
            borderRadius: BorderRadius.circular(50),
            onTap: () {
              controller.goToDarhayat();
            },
            child: Card(
                color: AppColor.backgroudlightcolor,
                child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text("دار الحياة",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: AppColor.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(
                          height: 30,
                          width: 70,
                        ),
                        Image.asset(ImageAsset.logo,
                            height: 50, width: 100, fit: BoxFit.fill),
                      ],
                    )))),
        const SizedBox(
          height: 15,
        ),
        InkWell(
            borderRadius: BorderRadius.circular(50),
            onTap: () {
              controller.goToMoujemaesekeni();
            },
            child: Card(
                color: AppColor.backgroudlightcolor,
                child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text("المجمع السكني",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: AppColor.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(
                          height: 30,
                          width: 70,
                        ),
                        Image.asset(ImageAsset.logo,
                            height: 50, width: 100, fit: BoxFit.fill),
                      ],
                    )))),
      ],
    );
  }
}
