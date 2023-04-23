import 'package:ecommercapp/controller/onboarding/onboarding_controller.dart';
import 'package:ecommercapp/core/constants/app_strings.dart';
import 'package:ecommercapp/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImpl> {
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 0),
        color: AppColor.primaryColor,
        textColor: Colors.white,
        onPressed: () {
        controller.next();
        },
        child:  Text(AppStrings.Continue.tr),
      ),
    );
  }
}
