import 'package:get/get.dart';

import '../../core/class/statusrequest.dart';
import '../../core/constants/routes.dart';
import '../../core/fuctions/handlingdata.dart';
import '../../data/datasource/remote/forgetpassword/verfiycode.dart';

abstract class VerifyCodeController extends GetxController {
  checkCode();
  goToResetPassword(String verifycode);
}

class VerifyCodeControllerImp extends VerifyCodeController {
  String? email;

  VerfiycodeForgetPasswordData verifyCodeForgetPasswordData =
      VerfiycodeForgetPasswordData(Get.find());

StatusRequest? statusRequest = StatusRequest.none;

  @override
  checkCode() {}

  @override
  goToResetPassword(verifycode) async {
    statusRequest = StatusRequest.loading;
    update();
    var response =
        await verifyCodeForgetPasswordData.postData(email!, verifycode);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.offNamed(AppRoute.resetPassword, arguments: {"email": email});
      } else {
        Get.defaultDialog(
            title: "ُWarning", middleText: "Verify Code Not Correct");
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }
}
