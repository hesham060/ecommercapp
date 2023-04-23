import 'package:ecommercapp/core/constants/routes.dart';
import 'package:ecommercapp/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';

import '../constants/app_strings.dart';

class MyMiddleWare extends GetMiddleware{
@override
int? get priority =>1;
MyServices myServices = Get.find();
RouteSettings ? redirect (String? route){
if (myServices.sharedPreferences.getString(AppStrings.myMiddlewareRoute)=="1"){
return const RouteSettings(name: AppRoute.Login);


}
}

}