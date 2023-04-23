import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/resetpassword_controller.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/fuctions/validinputs.dart';
import '../../../widget/auth/CustomButtomAuth.dart';
import '../../../widget/auth/CustomTextBodyAuth.dart';
import '../../../widget/auth/CustomTextTitleAuth.dart';
import '../../../widget/auth/customtextformauth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: Text('Reset Password',
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
            const SizedBox(height: 30),
            const CustomTextTitleAuth(text: "New password"),
            const SizedBox(height: 20),
            const CustomTextBodyAuth(text: "Please enter your new password"),
            const SizedBox(height: 15),
            CustomTextFormAuth(
            isNumber: true,
              myController: controller.password,
              hinttext: "Enter Your password",
              iconData: Icons.lock_outlined,
              labelText: "Password",
              valid: (val) {
                return validInput(val!, 5, 30, "password");
              },
              // mycontroller: ,
            ),
            const SizedBox(height: 5),
            CustomTextFormAuth(
             isNumber: true,
              myController: controller.password,
              hinttext: "Enter Your password",
              iconData: Icons.lock_outlined,
              labelText: "Password",
              valid: (val) {
                return validInput(val!, 5, 30, "password");
              },
              // mycontroller: ,
            ),

            CustomButtomAuth(
                text: "Save",
                onPressed: () {
                  controller.goToSuccessResetPassword();
                }),
            // const SizedBox(height: 40),
            // CustomTextSignUpOrSignIn(
            //   textOne: " have an account ? ",
            //   textTwo: " SignIn ",
            //   onTap: () {
            //     controller.goToSignIn();
            //   },
            // ),
          ]),
        ),
      ),
    );
  }
}
