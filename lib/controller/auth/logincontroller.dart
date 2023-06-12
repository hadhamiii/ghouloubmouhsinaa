// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:ghouloubmouhsina/core/constant/routes.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
  goToAceil();
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController email;
  late TextEditingController password;
  bool isShowpassword = true;
  shoxPassword() {
    isShowpassword = isShowpassword == true ? false : true;

    update();
  }

  @override
  login() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      print("Valid");
    } else {
      print("Not Valid");
    }
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoutes.signUp);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoutes.forgetPassword);
  }

  @override
  goToAceil() {
    Get.offNamed(AppRoutes.accueil);
  }
}
