import 'package:flutter/material.dart';
import 'package:ghouloubmouhsina/core/constant/routes.dart';
import 'package:ghouloubmouhsina/view/screen/OnBoarding.dart';
import 'package:ghouloubmouhsina/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:ghouloubmouhsina/view/screen/auth/login.dart';
import 'package:ghouloubmouhsina/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:ghouloubmouhsina/view/screen/auth/singup.dart';
import 'package:ghouloubmouhsina/view/screen/auth/forgetpassword/successresetpassword.dart';
import 'package:ghouloubmouhsina/view/screen/auth/successsignup.dart';
import 'package:ghouloubmouhsina/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:ghouloubmouhsina/view/screen/auth/verifycodesignup.dart';

Map<String, Widget Function(BuildContext)> routes = {
//onboarding
  AppRoutes.onBoarding: (context) => const OnBoarding(),

  //authentification
  AppRoutes.login: (context) => const Login(),
  AppRoutes.signUp: (context) => const SignUp(),
  AppRoutes.forgetPassword: (context) => const ForgetPassword(),
  AppRoutes.verfiyCode: (context) => const VerfiyCode(),
  AppRoutes.verfiyCodeSignUp: (context) => const VerfiyCodeSignUp(),
  AppRoutes.resetPassword: (context) => const ResetPassword(),
  AppRoutes.successResetpassword: (context) => const SuccessResetPassword(),
  AppRoutes.SuccessSignUp: (context) => const SuccessSignUp(),
};
