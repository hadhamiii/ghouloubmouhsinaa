import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghouloubmouhsina/controller/auth/logincontroller.dart';
import 'package:ghouloubmouhsina/core/constant/color.dart';
import 'package:ghouloubmouhsina/core/functions/alertexitapp.dart';
import 'package:ghouloubmouhsina/core/functions/valideinput.dart';
import 'package:ghouloubmouhsina/view/widget/auth/customtextform.dart';
import 'package:ghouloubmouhsina/view/widget/auth/customtexttitleauth.dart';
import 'package:ghouloubmouhsina/view/widget/auth/cutombuttonauth.dart';
import 'package:ghouloubmouhsina/view/widget/auth/cutomtextbodyauth.dart';
import 'package:ghouloubmouhsina/view/widget/auth/logoauth.dart';
import 'package:ghouloubmouhsina/view/widget/auth/textsingup.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.backgroundcolor,
          elevation: 0.0,
          title: Text('قم بتسجيل الدخول',
              style: Theme.of(context)
                  .textTheme
                  // ignore: deprecated_member_use
                  .headline1!
                  .copyWith(color: AppColor.black)),
        ),
        body: WillPopScope(
          onWillPop: alertExitApp,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: Form(
              key: controller.formstate,
              child: ListView(
                children: [
                  const LogoAuth(),
                  const SizedBox(height: 20),
                  const CustomTextTitleAuth(text: "مرحبا بكم"),
                  const SizedBox(height: 10),
                  const CustomTextBodyAuth(
                      text:
                          "قم بتسجيل الدخول باستخدام بريدك الإلكتروني وكلمة المرور أو استمر في التواصل الاجتماعي"),
                  const SizedBox(height: 15),
                  CustomTextFormAuth(
                    isNumber: false,
                    valid: (val) {
                      return validInput(val!, 5, 100, "email");
                    },
                    mycontroller: controller.email,
                    hinttext: "أدخل بريدك الإلكتروني",
                    iconData: Icons.email_outlined,
                    labeltext: "بريد إلكتروني",
                    // mycontroller: ,
                  ),
                  GetBuilder<LoginControllerImp>(
                    builder: (controller) => CustomTextFormAuth(
                      obscureText: controller.isShowpassword,
                      onTapIcon: () {
                        controller.shoxPassword();
                      },
                      isNumber: false,
                      valid: (val) {
                        return validInput(val!, 5, 30, "password");
                      },
                      mycontroller: controller.password,
                      hinttext: "دخل كلمة المرور الخاصة بك",
                      iconData: Icons.lock_outline,
                      labeltext: "كلمة المرور",
                      // mycontroller: ,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      controller.goToForgetPassword();
                    },
                    child: const Text(
                      " نسيت كلمة المرور",
                      textAlign: TextAlign.end,
                    ),
                  ),
                  CustomButtomAuth(
                      text: "قم بتسجيل الدخول ",
                      onPressed: () {
                        controller.login();
                      }),
                  const SizedBox(height: 20),
                  CustomTextSignUpOrSignIn(
                    textone: "ليس لديك حساب؟",
                    texttwo: "سجل",
                    onTap: () {
                      controller.goToSignUp();
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
