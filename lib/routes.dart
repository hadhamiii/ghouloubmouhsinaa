import 'package:get/get.dart';
import 'package:ghouloubmouhsina/core/constant/routes.dart';
import 'package:ghouloubmouhsina/core/middleware/mymiddleware.dart';
//import 'package:ghouloubmouhsina/test.dart';
import 'package:ghouloubmouhsina/view/screen/OnBoarding.dart';
import 'package:ghouloubmouhsina/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:ghouloubmouhsina/view/screen/auth/login.dart';
import 'package:ghouloubmouhsina/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:ghouloubmouhsina/view/screen/auth/singup.dart';
import 'package:ghouloubmouhsina/view/screen/auth/forgetpassword/successresetpassword.dart';
import 'package:ghouloubmouhsina/view/screen/auth/successsignup.dart';
import 'package:ghouloubmouhsina/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:ghouloubmouhsina/view/screen/auth/verifycodesignup.dart';
import 'package:ghouloubmouhsina/view/screen/document/campagne.dart';
import 'package:ghouloubmouhsina/view/screen/document/darhayat.dart';
import 'package:ghouloubmouhsina/view/screen/document/items.dart';
import 'package:ghouloubmouhsina/view/screen/document/lebeyk.dart';
import 'package:ghouloubmouhsina/view/screen/document/moujemeaseken.dart';
import 'package:ghouloubmouhsina/view/screen/home/accueil_screen.dart';
import 'package:ghouloubmouhsina/view/screen/home/handbutton.dart';
import 'package:ghouloubmouhsina/view/screen/setting/association.dart';
import 'package:ghouloubmouhsina/view/screen/setting/compte.dart';
import 'package:ghouloubmouhsina/view/screen/setting/contactez_nous.dart';
import 'package:ghouloubmouhsina/view/screen/setting/localisation.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/", page: () => const OnBoarding(), middlewares: [MyMiddleWare()]),
  //GetPage(name: "/", page: () => Test()),
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
  GetPage(name: AppRoutes.accueil, page: () => const HomeScreen()),
  GetPage(name: AppRoutes.categorie, page: () => const Items()),
  GetPage(name: AppRoutes.campagne, page: () => const Campagne()),
  GetPage(name: AppRoutes.lebeyk, page: () => const Lebeyk()),
  GetPage(name: AppRoutes.darhayat, page: () => const DarHaayat()),
  GetPage(name: AppRoutes.moumaesekeni, page: () => const MoujemaeSekeni()),
  GetPage(name: AppRoutes.handbutton, page: () => const HandButton()),
  GetPage(name: AppRoutes.contactez_nous, page: () => const ContactezNous()),
  GetPage(name: AppRoutes.association, page: () => const Association()),
  GetPage(name: AppRoutes.compte, page: () => const Compte()),
  GetPage(name: AppRoutes.localisation, page: () => const Localisation()),
];
