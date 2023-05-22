import 'package:get/get.dart';
import 'package:ghouloubmouhsina/controller/auth/singupcontroller.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpControllerImp(), fenix: true);
  }
}
