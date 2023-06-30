import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghouloubmouhsina/controller/home/aceil_controller.dart';
import 'package:ghouloubmouhsina/controller/home/homescreencontroller.dart';
import 'package:ghouloubmouhsina/core/constant/color.dart';
import 'package:ghouloubmouhsina/view/widget/home/accueillistcategories.dart';
import 'package:ghouloubmouhsina/view/widget/home/accueillistitems.dart';
import 'package:ghouloubmouhsina/view/widget/home/customappbarhome.dart';
import 'package:ghouloubmouhsina/view/widget/home/hadith.dart';
import 'package:ghouloubmouhsina/view/widget/home/newczrd.dart';
import 'package:ghouloubmouhsina/view/widget/home/postcard.dart';
import 'package:ghouloubmouhsina/view/widget/home/qaurancard.dart';

class Accueil extends StatelessWidget {
  const Accueil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(AccueilControllerImp());
    HomeScreenControllerImp controller2 = Get.put(HomeScreenControllerImp());

    return Scaffold(
        backgroundColor: Colors.white,
        body: GetBuilder<AccueilControllerImp>(
          builder: (controller) => Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListView(
                children: [
                  const CustomAppBarHome(),
                  const newcard(),
                  const SizedBox(
                    height: 10,
                  ),
                  const Qauran(),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          controller2.changePage(1);
                        },
                        child: const Text(
                          "<< المزيد",
                          style: TextStyle(
                              fontFamily: "Cairo",
                              color: AppColor.kPrimaryColor),
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
                  const SizedBox(height: 20),
                  const Text("الصدقات الجارية",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        color: AppColor.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                  const ListCategoriesAccueil(),
                  const SizedBox(
                    height: 20,
                  ),
                  const PostCard(),
                  const Hadith(),
                  const SizedBox(height: 20),
                ],
              )),
        ));
  }
}
