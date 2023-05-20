import 'package:ecommercapp/core/constants/app_strings.dart';
import 'package:ecommercapp/core/constants/routes.dart';
import 'package:ecommercapp/core/services/services.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/statusrequest.dart';
import '../../core/fuctions/handlingdata.dart';
import '../../data/datasource/remote/auth/login.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgotPassword();
}

class LoginControllerImpl extends LoginController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  MyServices myServices = Get.find();

  late TextEditingController email;
  late TextEditingController password;
  bool isShowPassword = true;
  LoginData signupData = LoginData(Get.find());
  StatusRequest? statusRequest = StatusRequest.none;

  showPassword() {
    isShowPassword = isShowPassword == true ? false : true;
    update();
  }

  @override
  login() async {
    if (formState.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await signupData.postData( 
        email.text,
        password.text,
      );
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
        myServices.sharedPreferences.setString(AppStrings.id,response['data']['users_id']);
        myServices.sharedPreferences.setString(AppStrings.username,response['data']['users_name']);
        myServices.sharedPreferences.setString("email",response['data']['users_email']);
        myServices.sharedPreferences.setString("phone",response['data']['users_phone']);
        myServices.sharedPreferences.setString("step","2");
        
          Get.offNamed(AppRoute.homePage, arguments: {"email": email.text});
        } else {
          Get.defaultDialog(
              title: "ُWarning", middleText: "Email or password is incorrect");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {
      print("not success");
    }
  }

  @override
  goToSignUp() {
    Get.toNamed(AppRoute.signUp);
  }

  @override
  goToForgotPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }

  @override
  void onInit() {
    FirebaseMessaging.instance.getToken().then((value) {
    print(value);
      String? token = value;
    });

    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
