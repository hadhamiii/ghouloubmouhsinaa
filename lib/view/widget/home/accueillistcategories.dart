import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghouloubmouhsina/controller/home/aceil_controller.dart';
import 'package:ghouloubmouhsina/controller/home/homescreencontroller.dart';
import 'package:ghouloubmouhsina/core/constant/color.dart';
import 'package:ghouloubmouhsina/data/datasource/static/listcateg.dart';
import 'package:ghouloubmouhsina/data/model/categoriesmodel.dart';

class ListCategoriesAccueil extends GetView<AccueilControllerImp> {
  const ListCategoriesAccueil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 122,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 5),
        itemCount: categorielist.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Categories(i: index, categoriesModel: CategoriesModel());
        },
      ),
    );
  }
}

class Categories extends GetView<AccueilControllerImp> {
  final CategoriesModel categoriesModel;
  final int? i;
  const Categories({this.i, Key? key, required this.categoriesModel})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    HomeScreenControllerImp controller2 = Get.put(HomeScreenControllerImp());
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
        child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.mosque_outlined,
                color: AppColor.kPrimaryLightColor,
                size: 30,
              ),
              Text(
                "الصدقات الجارية",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColor.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              )
            ]),
      ),
    );
  }
}
