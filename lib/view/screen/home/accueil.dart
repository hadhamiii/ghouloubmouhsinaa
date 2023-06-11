import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghouloubmouhsina/controller/home/aceil_controller.dart';
import 'package:ghouloubmouhsina/controller/home/homescreencontroller.dart';
import 'package:ghouloubmouhsina/core/constant/color.dart';
import 'package:ghouloubmouhsina/view/widget/home/accueillistcategories.dart';
import 'package:ghouloubmouhsina/view/widget/home/accueillistitems.dart';
import 'package:ghouloubmouhsina/view/widget/home/customappbarhome.dart';
import 'package:ghouloubmouhsina/view/widget/home/customcardhome.dart';
import 'package:ghouloubmouhsina/view/widget/home/postcard.dart';
import 'package:ghouloubmouhsina/view/widget/home/qaurancard.dart';

class Accueil extends StatelessWidget {
  const Accueil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(AccueilControllerImp());
    HomeScreenControllerImp controller2 = Get.put(HomeScreenControllerImp());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundcolor,
        title: Container(child: ),
      ),
        body: GetBuilder<AccueilControllerImp>(
      builder: (controller) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: ListView(
            children: [
              const CustomAppBarHome(),
              const CustomCardHome(
                Title: "بئر ارتوازي",
                body: "الحملة الكبرى للسقاية",
                button: "تبرع الآن",
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      controller2.changePage(1);
                    },
                    child: const Text(
                      "<< المزيد",
                      style: TextStyle(
                          fontFamily: "Cairo", color: AppColor.kPrimaryColor),
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    "الملفات",
                    style: TextStyle(
                      color: AppColor.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const ListItemsAccuiel(),
              const Qauran(),
              const ListCategoriesAccueil(),
              const SizedBox(
                height: 20,
              ),
              const PostCard(),
              const SizedBox(height: 20),
            ],
          )),
    ));
  }
}
