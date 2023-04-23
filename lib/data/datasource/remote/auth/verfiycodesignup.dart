import 'package:ecommercapp/linkapi.dart';

import '../../../../core/class/crud.dart';

class VerfiyCodeSignUpData {
  Crud crud;

  VerfiyCodeSignUpData(this.crud);

  postData(String email, String verfiycode) async {
    var response = await crud.postData(ApiLink.verfiycodesignup, {
      "email": email,
      "verifycode": verfiycode,
    });
    return response.fold((l) => l, (r) => r);
  }
}
