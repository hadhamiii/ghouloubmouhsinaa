import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghouloubmouhsina/controller/auth/logincontroller.dart';
import 'package:ghouloubmouhsina/core/constant/color.dart';

class Compte extends StatelessWidget {
  const Compte({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      backgroundColor: AppColor.backgroudlightcolor,
      appBar: AppBar(
        backgroundColor: AppColor.kPrimaryColor,
        title: const Text(
          "معلوماتي",
          style: TextStyle(color: AppColor.backgroundcolor),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColor.backgroundcolor),
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.all(20),
        height: 300,
        child: Column(
          children: [
            ListTile(
              onTap: () {},
              title: const Text(
                "إسم المستخدم",
                style: TextStyle(color: AppColor.grey),
              ),
              leading: const Icon(
                Icons.person,
                color: AppColor.kPrimaryColor,
              ),
            ),
            ListTile(
              onTap: () {},
              title: const Text(
                "رقم الهاتف",
                style: TextStyle(color: AppColor.grey),
              ),
              leading: const Icon(
                Icons.phone,
                color: AppColor.kPrimaryColor,
              ),
            ),
            ListTile(
              onTap: () {},
              title: const Text(
                "البريد الإلكتروني",
                style: TextStyle(color: AppColor.grey),
              ),
              leading: const Icon(
                Icons.mail,
                color: AppColor.kPrimaryColor,
              ),
            ),
            ListTile(
              onTap: () {
                controller.goToForgetPassword();
              },
              title: const Text(
                "****",
                style: TextStyle(color: AppColor.grey),
              ),
              leading: const Icon(
                Icons.lock,
                color: AppColor.kPrimaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
