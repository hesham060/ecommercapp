import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onboarding/onboarding_controller.dart';
import '../../widget/onboarding/custombutton.dart';
import '../../widget/onboarding/customdotcontroller.dart';
import '../../widget/onboarding/customslider.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
  Get.put(OnBoardingControllerImpl());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              flex: 3,
              child: CustomSliderOnBoarding(),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: const [
                    CustomDotControllerOnBoarding(),
                    Spacer(flex: 1,),
                    CustomButtonOnBoarding(),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
