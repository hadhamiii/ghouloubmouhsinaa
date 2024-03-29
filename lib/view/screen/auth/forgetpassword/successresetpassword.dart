// ignore_for_file: unused_local_variable, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghouloubmouhsina/controller/auth/successresetpassword_controller.dart';
import 'package:ghouloubmouhsina/core/constant/color.dart';
import 'package:ghouloubmouhsina/view/widget/auth/cutombuttonauth.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordControllerImp controller =
        Get.put(SuccessResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.kPrimaryColor,
        elevation: 0.0,
        title: Text('تبديل كلمة المرور',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.backgroundcolor)),
      ),
      body: Form(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(children: [
            const Center(
                child: Icon(
              Icons.check_circle_outline,
              size: 200,
              color: AppColor.kPrimaryColor,
            )),
            Text("تمت العملية بنجاح",
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(fontSize: 30)),
            const Text(""),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: CustomButtomAuth(
                  text: "اذهب لتسجيل الدخول",
                  onPressed: () {
                    controller.getToPageLogin();
                  }),
            ),
            const SizedBox(height: 30)
          ]),
        ),
      ),
    );
  }
}
