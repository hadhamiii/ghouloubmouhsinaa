import 'package:get/get.dart';
import 'package:ghouloubmouhsina/core/class/statusrequest.dart';
import 'package:ghouloubmouhsina/core/constant/routes.dart';
import 'package:ghouloubmouhsina/core/services/services.dart';

abstract class AccueilController extends GetxController {
  initialData();
  getdata();
  goToCategorie(List categories, int selectedCat);
  goToDocument();
  goToCampagne();
}

class AccueilControllerImp extends AccueilController {
  MyServices myServices = Get.find();

  String? username;
  String? id;

  // List data = [];
  List categories = [];
  List items = [];
  // List items = [];

  late StatusRequest statusRequest;

  @override
  initialData() {
    username = myServices.sharedPreferences.getString("username");
    id = myServices.sharedPreferences.getString("id");
  }

  @override
  void onInit() {
    getdata();
    initialData();
    super.onInit();
  }

  @override
  getdata() async {}

  @override
  goToCategorie(categories, selectedCat) {
    Get.toNamed(AppRoutes.categorie,
        arguments: {"categories": categories, "selectedcat": selectedCat});
  }

  @override
  goToDocument() {
    Get.toNamed(AppRoutes.document);
  }

  @override
  goToCampagne() {
    Get.toNamed(AppRoutes.campagne);
  }
}
