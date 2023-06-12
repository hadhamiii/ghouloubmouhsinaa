import 'package:get/get.dart';
import 'package:ghouloubmouhsina/core/constant/routes.dart';

abstract class ItemsController extends GetxController {
  intialData();
  changeCat(int val);
  goToLebeyk();
}

class ItemsControllerImp extends ItemsController {
  List categories = [];
  int? selectedCat;

  @override
  void onInit() {
    intialData();
    super.onInit();
  }

  @override
  intialData() {}

  @override
  changeCat(val) {
    selectedCat = val;
    update();
  }

  @override
  goToLebeyk() {
    Get.toNamed(AppRoutes.lebeyk);
  }
}
