import 'package:get/get.dart';
import 'package:ghouloubmouhsina/core/constant/routes.dart';
import 'package:ghouloubmouhsina/core/middleware/mymiddleware.dart';
import 'package:ghouloubmouhsina/view/screen/OnBoarding.dart';
import 'package:ghouloubmouhsina/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:ghouloubmouhsina/view/screen/auth/login.dart';
import 'package:ghouloubmouhsina/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:ghouloubmouhsina/view/screen/auth/singup.dart';
import 'package:ghouloubmouhsina/view/screen/auth/forgetpassword/successresetpassword.dart';
import 'package:ghouloubmouhsina/view/screen/auth/successsignup.dart';
import 'package:ghouloubmouhsina/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:ghouloubmouhsina/view/screen/auth/verifycodesignup.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/", page: () => const OnBoarding(), middlewares: [MyMiddleWare()]),
  GetPage(name: AppRoutes.login, page: () => const Login()),
  GetPage(name: AppRoutes.signUp, page: () => const SignUp()),
  GetPage(name: AppRoutes.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoutes.verfiyCode, page: () => const VerfiyCode()),
  GetPage(name: AppRoutes.resetPassword, page: () => const ResetPassword()),
  GetPage(
      name: AppRoutes.successResetpassword,
      page: () => const SuccessResetPassword()),
  GetPage(name: AppRoutes.SuccessSignUp, page: () => const SuccessSignUp()),
  GetPage(name: AppRoutes.onBoarding, page: () => const OnBoarding()),
  GetPage(
      name: AppRoutes.verfiyCodeSignUp, page: () => const VerfiyCodeSignUp()),
];
