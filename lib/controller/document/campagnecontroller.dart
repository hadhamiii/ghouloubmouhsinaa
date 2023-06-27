import 'package:get/get.dart';
import 'package:ghouloubmouhsina/core/constant/routes.dart';

abstract class CampagneController extends GetxController {
  goToCampagne();
  goToDon();
}

class CampagneControllerImp extends CampagneController {
  @override
  goToCampagne() {
    Get.toNamed(AppRoutes.campagne);
  }

  @override
  goToDon() {
    Get.toNamed(AppRoutes.donbutton);
  }
}
