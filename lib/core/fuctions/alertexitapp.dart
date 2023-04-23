import 'dart:io';

import 'package:ecommercapp/core/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertExitApp() {
   Get.defaultDialog(
      title: AppStrings.alertExitApp.tr,
      middleText: AppStrings.doYouWantToExitApp.tr,
      actions: [
        ElevatedButton(
            onPressed: () {
              exit(0);
            },
            child: Text(AppStrings.confim.tr)),
             ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: Text(AppStrings.cancel.tr)),
      ]
      
      );
       return Future.value(true);
     
}
