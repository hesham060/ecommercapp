import 'package:ecommercapp/core/constants/imageassets.dart';
import 'package:ecommercapp/data/model/onboardingmodel.dart';
import 'package:get/get.dart';

import '../../../core/constants/app_strings.dart';

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
      title: AppStrings.onBoardingTxtTitle1.tr,
      image: AppImageAsset.onBoardingImageOne,
      body:
        AppStrings. onBoardingTxt1.tr),
  OnBoardingModel(
      title: AppStrings.onBoardingTxtTitle2.tr,
      image: AppImageAsset.onBoardingImageTwo,
      body:
         AppStrings. onBoardingTxt2.tr),
  OnBoardingModel(
      title:AppStrings. onBoardingTxtTitle3.tr,
      image: AppImageAsset.onBoardingImageThree,
      body:
        AppStrings.  onBoardingTxt3.tr),
  OnBoardingModel(
      title: AppStrings.onBoardingTxtTitle4.tr,
      image: AppImageAsset.onBoardingImageOne,
      body:
       AppStrings.  onBoardingTxt4.tr),
];
