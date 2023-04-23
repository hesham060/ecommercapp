import 'package:get/get.dart';

import '../controller/auth/sign_up_controller.dart';

class MyBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>SignUpControllerImp(),fenix: true);
  }
}