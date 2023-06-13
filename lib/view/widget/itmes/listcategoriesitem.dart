import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghouloubmouhsina/controller/home/itemscontroller.dart';
import 'package:ghouloubmouhsina/core/constant/color.dart';
import 'package:ghouloubmouhsina/data/datasource/static/listcateg.dart';
import 'package:ghouloubmouhsina/data/model/categoriesmodel.dart';

class ListCategoriesItems extends GetView<ItemsControllerImp> {
  const ListCategoriesItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: Categorielist.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Categories(i: index, categoriesModel: CategoriesModel());
        },
      ),
    );
  }
}

class Categories extends GetView<ItemsControllerImp> {
  final CategoriesModel categoriesModel;
  final int? i;
  const Categories({this.i, Key? key, required this.categoriesModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: controller.selectedCat == i
            ? const BoxDecoration(
                border: Border(
                    bottom:
                        BorderSide(width: 5, color: AppColor.kPrimaryColor)))
            : null,
        child: const Text(
          "معهد لبيك كتاب اللَّهَ",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: AppColor.black, fontWeight: FontWeight.bold, fontSize: 17),
        ),
      ),
    );
  }
}
