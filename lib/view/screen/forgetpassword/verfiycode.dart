import 'package:ecommercapp/core/class/handlingdataview.dart';
import 'package:ecommercapp/core/class/statusrequest.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../../controller/forgetpassword/verifycode_controller.dart';
import '../../../core/constants/colors.dart';
import '../../widget/auth/CustomTextBodyAuth.dart';
import '../../widget/auth/CustomTextTitleAuth.dart';

class VerfiyCode extends StatelessWidget {
  const VerfiyCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(VerifyCodeControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: Text('Verfication Code',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: GetBuilder<VerifyCodeControllerImp>(
        builder: (controller) => HandlingDataRequest(
          statusRequest: controller.statusRequest!,
          widget: Container(
            child: ListView(
              children: [
                const SizedBox(
                  height: 100,
                ),
                const CustomTextTitleAuth(
                  text: "Check Code ",
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomTextBodyAuth(
                  text:
                      'Please Enter The Digit Code Sent To\n HeshamKhaled060@Gmail.com',
                ),
                const SizedBox(
                  height: 20,
                ),
                OtpTextField(
                  borderRadius: BorderRadius.all(Radius.circular(10.00)),
                  fieldWidth: 50.00,
                  numberOfFields: 5,
                  borderColor: AppColor.primaryColor,
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {
                    controller.goToResetPassword(verificationCode);
                  }, // end onSubmit
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
