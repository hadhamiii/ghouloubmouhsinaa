// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghouloubmouhsina/controller/auth/resetpassword_controller.dart';
import 'package:ghouloubmouhsina/core/constant/color.dart';
import 'package:ghouloubmouhsina/core/functions/valideinput.dart';
import 'package:ghouloubmouhsina/view/widget/auth/customtextform.dart';
import 'package:ghouloubmouhsina/view/widget/auth/customtexttitleauth.dart';
import 'package:ghouloubmouhsina/view/widget/auth/cutombuttonauth.dart';
import 'package:ghouloubmouhsina/view/widget/auth/cutomtextbodyauth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('ResetPassword',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Form(
        key: controller.formstate,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: ListView(children: [
            const SizedBox(height: 20),
            const CustomTextTitleAuth(text: "كلمة مرور جديدة"),
            const SizedBox(height: 10),
            const CustomTextBodyAuth(text: "يرجى إدخال كلمة المرور الجديدة"),
            const SizedBox(height: 15),
            CustomTextFormAuth(
              isNumber: false,
              valid: (val) {
                return validInput(val!, 3, 40, "password");
              },
              mycontroller: controller.password,
              hinttext: "أدخل كلمة المرور",
              iconData: Icons.lock_outline,
              labeltext: "كلمة المرور",
              // mycontroller: ,
            ),
            CustomTextFormAuth(
              isNumber: false,
              valid: (val) {
                return validInput(val!, 3, 40, "password");
              },
              mycontroller: controller.password,
              hinttext: "أعد إدخال كلمة المرور",
              iconData: Icons.lock_outline,
              labeltext: " كلمة المرور",
              // mycontroller: ,
            ),
            CustomButtomAuth(
                text: "سجل",
                onPressed: () {
                  controller.goToSuccessResetPassword();
                }),
            const SizedBox(height: 40),
          ]),
        ),
      ),
    );
  }
}
