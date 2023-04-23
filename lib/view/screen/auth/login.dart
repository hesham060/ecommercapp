import 'package:ecommercapp/controller/auth/login_cotroller.dart';
import 'package:ecommercapp/core/class/statusrequest.dart';
import 'package:ecommercapp/core/constants/app_strings.dart';
import 'package:ecommercapp/core/fuctions/alertexitapp.dart';
import 'package:ecommercapp/core/fuctions/validinputs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/imageassets.dart';
import '../../widget/auth/CustomButtomAuth.dart';
import '../../widget/auth/CustomTextBodyAuth.dart';
import '../../widget/auth/CustomTextTitleAuth.dart';
import '../../widget/auth/customtextformauth.dart';
import '../../widget/auth/logoauth.dart';
import '../../widget/auth/textsignup.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginControllerImpl controller = Get.put(LoginControllerImpl());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.backgroundColor,
          elevation: 0.0,
          title: Text(AppStrings.signInTxt.tr,
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: AppColor.grey)),
        ),
        body: WillPopScope(
          onWillPop: alertExitApp,
          child: GetBuilder<LoginControllerImpl>(
            builder: (controller) => controller.statusRequest ==
                    StatusRequest.loading
                ? Center(child: Lottie.asset(AppJsonAsset.loadingJson))
                : Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 30),
                    child: Form(
                      key: controller.formState,
                      child: ListView(children: [
                        const LogoAuth(),
                        const SizedBox(height: 20),
                        CustomTextTitleAuth(text: AppStrings.welcomeBack.tr),
                        const SizedBox(height: 10),
                        CustomTextBodyAuth(text: AppStrings.signIntxtbody.tr),
                        const SizedBox(height: 15),
                        CustomTextFormAuth(
                          isNumber: false,
                          myController: controller.email,
                          hinttext: AppStrings.signInTxtForm1.tr,
                          iconData: Icons.email_outlined,
                          labelText: AppStrings.email.tr,
                          valid: (val) {
                            return validInput(val!, 5, 100, "email");
                          },
                        ),
                        GetBuilder<LoginControllerImpl>(
                          builder: (controller) => CustomTextFormAuth(
                            obscureText: controller.isShowPassword,
                            onTapIcon: () {
                              controller.showPassword();
                            },
                            isNumber: true,
                            myController: controller.password,
                            hinttext: AppStrings.signInTxtForm1.tr,
                            iconData: Icons.lock_outline,
                            labelText: AppStrings.password.tr,
                            // mycontroller: ,
                            valid: (val) {
                              return validInput(val!, 5, 30, "password");
                            },
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            controller.goToForgotPassword();
                          },
                          child: Text(
                            AppStrings.forgetpassword.tr,
                            textAlign: TextAlign.end,
                          ),
                        ),
                        CustomButtomAuth(
                            text: AppStrings.login.tr,
                            onPressed: () {
                              controller.login();
                            }),
                        const SizedBox(height: 40),
                        CustomTextSignUpOrSignIn(
                          textOne: AppStrings.dontHaveAnAccountTxt.tr,
                          textTwo: AppStrings.signUpTxt.tr,
                          onTap: () {
                            controller.goToSignUp();
                          },
                        )
                      ]),
                    ),
                  ),
          ),
        ));
  }
}
