// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghouloubmouhsina/controller/auth/forgetpassword_controller.dart';
import 'package:ghouloubmouhsina/core/constant/color.dart';
import 'package:ghouloubmouhsina/core/functions/valideinput.dart';
import 'package:ghouloubmouhsina/view/widget/auth/customtextform.dart';
import 'package:ghouloubmouhsina/view/widget/auth/customtexttitleauth.dart';
import 'package:ghouloubmouhsina/view/widget/auth/cutombuttonauth.dart';
import 'package:ghouloubmouhsina/view/widget/auth/cutomtextbodyauth.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.kPrimaryColor,
        elevation: 0.0,
        title: Text(' نسيت كلمة المرور',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.backgroundcolor)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          key: controller.formstate,
          child: ListView(children: [
            const SizedBox(height: 20),
            const CustomTextTitleAuth(text: "تحقق من رقم الهاتف"),
            const SizedBox(height: 10),
            const CustomTextBodyAuth(
                text: "يرجى إدخال رقم هاتفك لتلقي رمز التحقق"),
            const SizedBox(height: 15),
            CustomTextFormAuth(
              isNumber: true,
              valid: (val) {
                return validInput(val!, 6, 11, "phone");
              },
              mycontroller: controller.phone,
              hinttext: "أدخل هاتفك",
              iconData: Icons.phone_android_outlined,
              labeltext: "الهاتف",
              // mycontroller: ,
            ),
            CustomButtomAuth(
                text: "فحص",
                onPressed: () {
                  controller.goToVerfiyCode();
                }),
            const SizedBox(height: 40),
          ]),
        ),
      ),
    );
  }
}
