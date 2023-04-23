import 'package:ecommercapp/core/class/statusrequest.dart';
import 'package:ecommercapp/core/constants/imageassets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../controller/auth/sign_up_controller.dart';
import '../../../core/constants/colors.dart';
import '../../../core/fuctions/alertexitapp.dart';
import '../../../core/fuctions/validinputs.dart';
import '../../widget/auth/CustomButtomAuth.dart';
import '../../widget/auth/CustomTextBodyAuth.dart';
import '../../widget/auth/CustomTextTitleAuth.dart';
import '../../widget/auth/customtextformauth.dart';
import '../../widget/auth/textsignup.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.backgroundColor,
          elevation: 0.0,
          title: Text('Sign Up',
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: AppColor.grey)),
        ),
        body: WillPopScope(
            onWillPop: alertExitApp,
            child: GetBuilder<SignUpControllerImp>(
              builder: (controller) =>
                  controller.statusRequest == StatusRequest.loading
                      ? Center(child: Lottie.asset(AppJsonAsset.loadingJson))
                      : Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 30),
                          child: Form(
                            key: controller.formstate,
                            child: ListView(children: [
                              const SizedBox(height: 20),
                              const CustomTextTitleAuth(text: "Welcome Back"),
                              const SizedBox(height: 10),
                              const CustomTextBodyAuth(
                                  text:
                                      "Sign Up With Your Email And Password OR Continue With Social Media"),
                              const SizedBox(height: 15),
                              CustomTextFormAuth(
                                isNumber: false,
                                myController: controller.username,
                                hinttext: "Enter Your Username",
                                iconData: Icons.person_outline,
                                labelText: "Username",
                                valid: (val) {
                                  return validInput(val!, 5, 50, "userName");
                                },
                              ),
                              CustomTextFormAuth(
                                isNumber: false,
                                myController: controller.email,
                                hinttext: "Enter Your Email",
                                iconData: Icons.email_outlined,
                                labelText: "Email",
                                valid: (val) {
                                  return validInput(val!, 5, 100, "email");
                                },
                                // mycontroller: ,
                              ),
                              CustomTextFormAuth(
                                isNumber: true,
                                myController: controller.phone,
                                hinttext: "Enter Your Phone",
                                iconData: Icons.phone_android_outlined,
                                labelText: "Phone",
                                // mycontroller: ,
                                valid: (val) {
                                  return validInput(val!, 5, 30, "phone");
                                },
                              ),
                              CustomTextFormAuth(
                                isNumber: true,
                                myController: controller.password,
                                hinttext: "Enter Your Password",
                                iconData: Icons.lock_outline,
                                labelText: "Password",
                                valid: (val) {
                                  return validInput(val!, 5, 30, "password");
                                },
                                // mycontroller: ,
                              ),
                              CustomButtomAuth(
                                  text: "Sign Up",
                                  onPressed: () {
                                    controller.signUp();
                                  }),
                              const SizedBox(height: 40),
                              CustomTextSignUpOrSignIn(
                                textOne: " have an account ? ",
                                textTwo: " SignIn ",
                                onTap: () {
                                  controller.goToSignIn();
                                },
                              ),
                            ]),
                          ),
                        ),
            )));
  }
}
