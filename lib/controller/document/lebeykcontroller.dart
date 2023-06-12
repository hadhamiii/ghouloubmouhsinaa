import 'package:get/get.dart';
import 'package:ghouloubmouhsina/core/constant/routes.dart';

abstract class LebeykController extends GetxController {
  goToLebeyk();
  goToDarhayat();
  goToMoujemaesekeni();
}

class LebeykControllerImp extends LebeykController {
  @override
  goToLebeyk() {
    Get.toNamed(AppRoutes.lebeyk);
  }

  @override
  goToDarhayat() {
    Get.toNamed(AppRoutes.darhayat);
  }

  @override
  goToMoujemaesekeni() {
    Get.toNamed(AppRoutes.moumaesekeni);
  }
}
