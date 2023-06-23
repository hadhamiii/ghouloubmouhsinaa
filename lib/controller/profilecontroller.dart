import 'package:get/get.dart';
import 'package:ghouloubmouhsina/core/constant/routes.dart';
import 'package:ghouloubmouhsina/core/services/services.dart';

class ProfileController extends GetxController {
  MyServices myServices = Get.find();
  goTocontact() {
    Get.toNamed(AppRoutes.contactez_nous);
  }

  logout() {
    myServices.sharedPreferences.clear();
    Get.offAllNamed(AppRoutes.login);
  }

  goToAssociation() {
    Get.toNamed(AppRoutes.association);
  }

  goToCompte() {
    Get.toNamed(AppRoutes.compte);
  }

  goToLocalisation() {
    Get.toNamed(AppRoutes.localisation);
  }
}
