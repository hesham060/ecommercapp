import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/class/statusrequest.dart';
import '../../core/constants/routes.dart';
import '../../core/fuctions/handlingdata.dart';
import '../../data/datasource/remote/forgetpassword/checkpassword.dart';

abstract class ForgetPasswordController extends GetxController {
  checkemail();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  late TextEditingController email;
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  CheckEmailData checkEmailData = CheckEmailData(Get.find());
StatusRequest? statusRequest = StatusRequest.none;

  @override
  checkemail() async {
    if (formState.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await checkEmailData.postData(email.text);
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offNamed(AppRoute.verfiycode, arguments: {"email": email.text});
        } else {
          Get.defaultDialog(title: "ُWarning", middleText: "Email Not Found");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    }
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
