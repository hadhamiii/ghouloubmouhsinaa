// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';
import 'package:ghouloubmouhsina/core/constant/routes.dart';

abstract class VerifyCodeControllerSignUp extends GetxController {
  checkCode();
  goToSuccessSignup();
}

class VerifyCodeControllerSignUpImp extends VerifyCodeControllerSignUp {
  late String verifycode;

  @override
  checkCode() {}

  @override
  goToSuccessSignup() {
    Get.offNamed(AppRoutes.SuccessSignUp);
  }

  @override
  void onInit() {
    super.onInit();
  }
}
