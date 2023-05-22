// ignore_for_file: unused_element

import 'package:get/get.dart';
import 'package:ghouloubmouhsina/core/constant/routes.dart';

abstract class SuccessResetPasswordController extends GetxController {
  getToPageLogin();
}

class SuccessResetPasswordControllerImp extends SuccessResetPasswordController {
  @override
  getToPageLogin() {
    Get.offAllNamed(AppRoutes.login);
  }
}
