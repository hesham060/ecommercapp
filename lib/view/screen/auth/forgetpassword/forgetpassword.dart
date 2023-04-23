import 'package:ecommercapp/controller/auth/forgetpassword_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/fuctions/validinputs.dart';
import '../../../widget/auth/CustomButtomAuth.dart';
import '../../../widget/auth/CustomTextBodyAuth.dart';
import '../../../widget/auth/CustomTextTitleAuth.dart';
import '../../../widget/auth/customtextformauth.dart';
import '../../../widget/auth/textsignup.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: Text('Forget Password',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
        key: controller.formState,
          child: ListView(children: [
            const SizedBox(height: 20),
            const CustomTextTitleAuth(text: "Check Email"),
            const SizedBox(height: 10),
            const CustomTextBodyAuth(
                text: "Please enter your email address to receive your password"),
            const SizedBox(height: 15),
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
            const Text(
              "Forget Password",
              textAlign: TextAlign.end,
            ),
            CustomButtomAuth(text: "Check", onPressed: () {
            controller.goToVerfiyCode();
            }),
            const SizedBox(height: 40),
            CustomTextSignUpOrSignIn(
              textOne: " have an account ? ",
              textTwo: " SignIn ",
              onTap: () {
                controller.goToVerfiyCode();
              },
            ),
          ]),
        ),
      ),
    );
  }
}
