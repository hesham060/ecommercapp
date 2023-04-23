import 'package:ecommercapp/core/constants/routes.dart';
import 'package:ecommercapp/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:ecommercapp/view/screen/auth/login.dart';
import 'package:ecommercapp/view/screen/auth/signup.dart';
import 'package:ecommercapp/view/screen/auth/forgetpassword/sucess_resetpassword.dart';
import 'package:ecommercapp/view/screen/auth/sucess_signup.dart';
import 'package:ecommercapp/view/screen/auth/verfiycode.dart';
import 'package:ecommercapp/view/screen/auth/verfiycodesignup.dart';
import 'package:ecommercapp/view/screen/home.dart';
import 'package:ecommercapp/view/screen/language/language.dart';
import 'package:ecommercapp/view/screen/onboarding/onboarding.dart';
import 'package:get/get.dart';

import 'core/constants/app_strings.dart';
import 'core/middleware/mymiddleware.dart';
import 'view/screen/auth/forgetpassword/resetpassword.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: AppStrings.firstRoute,
      page: () => const Language(),
      middlewares: [MyMiddleWare()]),
  // GetPage(name: "/", page: ()=> TestView()),
  GetPage(name: AppRoute.Login, page: () => const Login()),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.ForgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verfiycode, page: () => const VerfiyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(
      name: AppRoute.successResetpassword,
      page: () => const SuccessResetPassword()),
  GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignUp()),
  GetPage(name: AppRoute.OnBoarding, page: () => const OnBoarding()),
  GetPage(
    name: AppRoute.verfiyCodeSignUp,
    page: () => const VerfiyCodeSignUp(),
  ),
  GetPage(name: AppRoute.HomePage, page: () => const Home()),
];

// Map<String, Widget Function(BuildContext)> routes = {
// // auth
//   AppRoute.Login: (context) => const Login(),
//   AppRoute.signUp: (context) => const SignUp(),
//   AppRoute.ForgetPassword: (context) => const ForgetPassword(),
//   // onboarding
//   AppRoute.OnBoarding: (context) => const OnBoarding(),
//   AppRoute.verfiycode: (context) => const VerfiyCode(),
//   AppRoute.resetPassword: (context) => const ResetPassword(),
//   AppRoute.successResetpassword: (context) => const SuccessResetPassword(),
//   AppRoute.successSignUp: (context) => const SuccessSignUp(),
//   AppRoute.checkemail: (context) => const CheckEmail(),
//   AppRoute.verfiyCodeSignUp: (context) => const VerfiyCodeSignUp(),
// };
