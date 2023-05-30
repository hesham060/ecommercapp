import 'package:ecommercapp/core/constants/routes.dart';
import 'package:ecommercapp/view/screen/forgetpassword/forgetpassword.dart';
import 'package:ecommercapp/view/screen/auth/login.dart';
import 'package:ecommercapp/view/screen/auth/signup.dart';
import 'package:ecommercapp/view/screen/forgetpassword/sucess_resetpassword.dart';
import 'package:ecommercapp/view/screen/auth/sucess_signup.dart';
import 'package:ecommercapp/view/screen/forgetpassword/verfiycode.dart';
import 'package:ecommercapp/view/screen/auth/verfiycodesignup.dart';
import 'package:ecommercapp/view/screen/homescreen.dart';
import 'package:ecommercapp/view/screen/items.dart';
import 'package:ecommercapp/view/screen/language/language.dart';
import 'package:ecommercapp/view/screen/onboarding/onboarding.dart';
import 'package:ecommercapp/view/screen/productdetailsscreen.dart';
import 'package:get/get.dart';
import 'core/constants/app_strings.dart';
import 'core/middleware/mymiddleware.dart';
import 'view/screen/forgetpassword/resetpassword.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: AppStrings.firstRoute,
      page: () => const Language(),
      middlewares: [MyMiddleWare()]),
  // GetPage(name: "/", page: ()=> ProductDetailsScreen()),
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verfiycode, page: () => const VerfiyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(
      name: AppRoute.successResetpassword,
      page: () => const SuccessResetPassword()),
  GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignUp()),
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),
  GetPage(
    name: AppRoute.verfiyCodeSignUp,
    page: () => const VerfiyCodeSignUp(),
  ),
  GetPage(name: AppRoute.homePage, page: () => const HomeScreen()),
  GetPage(name: AppRoute.items, page: () => const ItemsScreen()),
  GetPage(name: AppRoute.product, page: () => const ProductDetailsScreen()),
];
