// ignore_for_file: unused_element

import 'package:get/get.dart';
import 'package:ghouloubmouhsina/core/constant/routes.dart';

abstract class SuccessSignUpController extends GetxController {
  getToPageLogin();
}

class SuccessSignUpControllerImp extends SuccessSignUpController {
  @override
  getToPageLogin() {
    Get.offAllNamed(AppRoutes.login);
  }
}
