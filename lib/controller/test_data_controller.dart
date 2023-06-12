import 'package:get/get.dart';
import 'package:ghouloubmouhsina/core/class/statusrequest.dart';
import 'package:ghouloubmouhsina/core/constant/routes.dart';
import 'package:ghouloubmouhsina/core/functions/handingdatacontroller.dart';
import 'package:ghouloubmouhsina/data/datasource/remote/test_data.dart';

class TestController extends GetxController {
  TestData testData = TestData(Get.find());

  List data = [];

  late StatusRequest statusRequest;

  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await testData.getData();
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        data.addAll(response['data']);
        Get.offNamed(AppRoutes.verfiyCodeSignUp);
      } else {
        Get.defaultDialog(
            title: "تنبيه", middleText: "رقم الهاتف أو البريد مستخدم من قبل");
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
