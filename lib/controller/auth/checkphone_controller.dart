import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:ghouloubmouhsina/core/constant/routes.dart';

abstract class CheckPhoneController extends GetxController {
  checkphone();
  goToVerifyCode();
}

class CheckPhoneControllerImp extends CheckPhoneController {
  late TextEditingController phone;

  @override
  checkphone() {}

  @override
  goToVerifyCode() {
    Get.offNamed(AppRoutes.verfiyCodeSignUp);
  }

  @override
  void onInit() {
    phone = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    phone.dispose();
    super.dispose();
  }
}
