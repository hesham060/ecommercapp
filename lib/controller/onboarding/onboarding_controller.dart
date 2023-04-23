import 'package:ecommercapp/core/constants/app_strings.dart';
import 'package:ecommercapp/core/constants/routes.dart';
import 'package:ecommercapp/core/services/services.dart';
import 'package:ecommercapp/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChange(int index);
}

class OnBoardingControllerImpl extends OnBoardingController {
  late PageController pageController;

  int currentPage = 0;
  MyServices myServices = Get.find();

  @override
  next() {
    currentPage++;
    if (currentPage > onBoardingList.length - 1) {
      myServices.sharedPreferences.setString(
          AppStrings.myMiddlewareRoute, AppStrings.mymiddleWareValue);

      Get.offAllNamed(AppRoute.Login);
    } else {
      pageController.animateToPage(currentPage,
          duration:const Duration(milliseconds: 300), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChange(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
