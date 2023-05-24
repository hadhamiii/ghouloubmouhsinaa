// ignore_for_file: use_key_in_widget_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghouloubmouhsina/controller/auth/singupcontroller.dart';
import 'package:ghouloubmouhsina/core/constant/color.dart';
import 'package:ghouloubmouhsina/core/functions/alertexitapp.dart';
import 'package:ghouloubmouhsina/core/functions/valideinput.dart';
import 'package:ghouloubmouhsina/view/widget/auth/customtextform.dart';
import 'package:ghouloubmouhsina/view/widget/auth/customtexttitleauth.dart';
import 'package:ghouloubmouhsina/view/widget/auth/cutombuttonauth.dart';
import 'package:ghouloubmouhsina/view/widget/auth/cutomtextbodyauth.dart';
import 'package:ghouloubmouhsina/view/widget/auth/textsingup.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.kPrimaryColor,
        elevation: 0.0,
        title: Text("قم بالتسجيل",
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.kPrimaryLightColor)),
      ),
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: Form(
            key: controller.formstate,
            child: ListView(children: [
              const SizedBox(height: 20),
              const CustomTextTitleAuth(text: "مرحبا بعودتك"),
              const SizedBox(height: 10),
              const CustomTextBodyAuth(
                  text:
                      "قم بتسجيل الدخول باستخدام بريدك الإلكتروني وكلمة المرور أو استمر في التواصل الاجتماعي"),
              const SizedBox(height: 15),
              CustomTextFormAuth(
                isNumber: false,
                valid: (val) {
                  return validInput(val!, 4, 15, "username");
                },
                mycontroller: controller.username,
                hinttext: "أدخل اسم المستخدم الخاص بك",
                iconData: Icons.person_outline,
                labeltext: "اسم المستخدم",
                // mycontroller: ,
              ),
              CustomTextFormAuth(
                isNumber: false,
                valid: (val) {
                  return validInput(val!, 5, 40, "email");
                },
                mycontroller: controller.email,
                hinttext: "أدخل بريدك الإلكتروني",
                iconData: Icons.email_outlined,
                labeltext: "البريد الإلكتروني",
                // mycontroller: ,
              ),
              CustomTextFormAuth(
                isNumber: true,
                valid: (val) {
                  return validInput(val!, 5, 11, "phone");
                },
                mycontroller: controller.phone,
                hinttext: "أدخل هاتفك",
                iconData: Icons.phone_android_outlined,
                labeltext: "الهاتف",
                // mycontroller: ,
              ),
              CustomTextFormAuth(
                isNumber: false,
                valid: (val) {
                  return validInput(val!, 5, 30, "password");
                },
                mycontroller: controller.password,
                hinttext: "أدخل كلمة المرور الخاصة بك",
                iconData: Icons.lock_outline,
                labeltext: "كلمة المرور",
                // mycontroller: ,
              ),
              CustomButtomAuth(
                  text: "قم بالتسجيل",
                  onPressed: () {
                    controller.signUp();
                  }),
              const SizedBox(height: 40),
              CustomTextSignUpOrSignIn(
                textone: " هل لديك حساب؟",
                texttwo: " تسجيل الدخول ",
                onTap: () {
                  controller.goToSignIn();
                },
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
