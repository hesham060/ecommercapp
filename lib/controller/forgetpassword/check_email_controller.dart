// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../core/constants/routes.dart';

// abstract class CheckEmailController extends GetxController {
//   checkemail();
//   goToVerfiyCode();
// }

// class CheckEmailControllerImp extends CheckEmailController {
//   GlobalKey<FormState> formState = GlobalKey<FormState>();
//   late TextEditingController email;

//   @override
//   checkemail() {
//     var formData = formState.currentState;
//     if (formData!.validate()) {
//       print("valid");
//       Get.offNamed(AppRoute.successResetpassword);
//     } else {
//       print("not valid");
//     }
//   }

//   @override
//   goToVerfiyCode() {
//     Get.offNamed(AppRoute.verfiyCodeSignUp);
//   }

//   @override
//   void onInit() {
//     email = TextEditingController();
//     super.onInit();
//   }

//   @override
//   void dispose() {
//     email.dispose();
//     super.dispose();
//   }
// }
