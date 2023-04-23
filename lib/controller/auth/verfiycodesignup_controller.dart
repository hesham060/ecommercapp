import 'package:get/get.dart';

import '../../core/class/statusrequest.dart';
import '../../core/constants/routes.dart';
import '../../core/fuctions/handlingdata.dart';
import '../../data/datasource/remote/auth/verfiycodesignup.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  checkCode();
  goToSuccessSignUp(String verfiycodesignup);

}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {
  VerfiyCodeSignUpData verfiyCodeSignUpData = VerfiyCodeSignUpData(Get.find());
  StatusRequest? statusRequest;
  String? email;

  @override
  checkCode() {}

  @override
  goToSuccessSignUp(  verfiycodesignup) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await verfiyCodeSignUpData.postData(email!, verfiycodesignup );
   
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.offNamed(AppRoute.successSignUp);
      } else {
        Get.defaultDialog(
            title: "ُWarning",
            middleText: "Wrong verification code \n sign up failed");
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
