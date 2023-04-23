import 'package:ecommercapp/core/constants/routes.dart';
import 'package:ecommercapp/core/localization/changelocal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/language/custombuttonlang.dart';

class Language extends GetView<LocalController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "1".tr,
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButtonLang(
            textButton: 'AR',
            onPressed: () {
              controller.changeLang("ar");
              Get.toNamed(AppRoute.OnBoarding);
            },
          ),
          CustomButtonLang(
            textButton: 'EN',
            onPressed: () {
              controller.changeLang("en");
              Get.toNamed(AppRoute.OnBoarding);
            },
          ),
        ],
      ),
    );
  }
}
