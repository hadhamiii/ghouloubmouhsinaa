import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghouloubmouhsina/controller/home/aceil_controller.dart';
import 'package:ghouloubmouhsina/controller/home/homescreencontroller.dart';
import 'package:ghouloubmouhsina/core/constant/color.dart';
import 'package:ghouloubmouhsina/data/datasource/static/listcateg.dart';

class ListCategoriesAccueil extends GetView<AccueilControllerImp> {
  const ListCategoriesAccueil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeScreenControllerImp controller2 = Get.put(HomeScreenControllerImp());
    return SizedBox(
      height: 122,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 5),
        itemCount: Categorielist.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              controller2.changePage(2);
            },
            child: Container(
              width: 122,
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 218, 248, 235),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Categorielist[index].categoriesImage!,
                    Text(
                      Categorielist[index].categoriesName!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: AppColor.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    )
                  ]),
            ),
          );
        },
      ),
    );
  }
}
