import 'package:ecommercapp/core/constants/routes.dart';
import 'package:ecommercapp/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/app_strings.dart';

class MyMiddleWare extends GetMiddleware {
  @override
  int? get priority => 1;
  MyServices myServices = Get.find();
  @override
  RouteSettings? redirect(String? route) {
   if (myServices.sharedPreferences.getString(AppStrings.myMiddlewareRoute) ==
        "2") {
      return const RouteSettings(name: AppRoute.homePage);
    }

  
    if (myServices.sharedPreferences.getString(AppStrings.myMiddlewareRoute) ==
        "1") {
      return const RouteSettings(name: AppRoute.login);
    }
    return null; 
    
  }
}
