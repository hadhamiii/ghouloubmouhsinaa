// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghouloubmouhsina/controller/profilecontroller.dart';
import 'package:ghouloubmouhsina/core/constant/color.dart';
import 'package:ghouloubmouhsina/core/constant/imageasset.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProfileController controller = Get.put(ProfileController());
    return Container(
      child: ListView(
        children: [
          Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(height: Get.width / 3, color: AppColor.kPrimaryColor),
                Positioned(
                    top: Get.width / 3.9,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100)),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.grey[100],
                        backgroundImage: const AssetImage(ImageAsset.logo),
                      ),
                    )),
              ]),
          const SizedBox(height: 100),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Card(
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                ListTile(
                  onTap: () {
                    controller.goToCompte();
                  },
                  trailing: const Icon(Icons.edit_note_rounded),
                  title: const Text("معلوماتي الشخصية"),
                ),
                ListTile(
                  onTap: () {
                    controller.goToAssociation();
                  },
                  trailing: const Icon(Icons.help_outline_rounded),
                  title: const Text("عن قلوب محسنة"),
                ),
                ListTile(
                  onTap: () {
                    controller.goTocontact();
                  },
                  trailing: const Icon(Icons.phone_callback_outlined),
                  title: const Text("تواصل معنا"),
                ),
                ListTile(
                  onTap: () {
                    controller.goToLocalisation();
                  },
                  trailing: const Icon(Icons.location_on_outlined),
                  title: const Text("إمكانية الوصول"),
                ),
                ListTile(
                  onTap: () {
                    controller.logout();
                  },
                  title: const Text("تسجيل الخروج"),
                  trailing: const Icon(Icons.exit_to_app),
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
