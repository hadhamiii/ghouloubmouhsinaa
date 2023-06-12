import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghouloubmouhsina/controller/home/aceil_controller.dart';
import 'package:ghouloubmouhsina/core/constant/color.dart';
import 'package:ghouloubmouhsina/core/constant/imageasset.dart';
import 'package:ghouloubmouhsina/data/datasource/static/listcateg.dart';
import 'package:ghouloubmouhsina/data/model/accueilmodel.dart';

class ListItemsAccuiel extends GetView<AccueilControllerImp> {
  const ListItemsAccuiel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      child: ListView.builder(
          itemCount: categorielist.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, i) {
            return ItemsAccueil(itemsModel: ItemsModel());
          }),
    );
  }
}

class ItemsAccueil extends StatelessWidget {
  final ItemsModel itemsModel;
  const ItemsAccueil({Key? key, required this.itemsModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 218, 248, 235),
          ),
          height: 200,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Image.asset(
            ImageAsset.onBoardingImagetrois,
            height: 100,
            width: 300,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          width: 200,
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: AppColor.backgroudlightcolor,
            ),
            width: 120,
            height: 50,
            margin: const EdgeInsets.only(),
            child: InkWell(
              onTap: () {},
              child: const Text("ملف السقاية",
                  style: TextStyle(
                      color: AppColor.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 20),
                  textAlign: TextAlign.center),
            )),
      ],
    );
  }
}
