import 'package:ecommercapp/linkapi.dart';

import '../../../../core/class/crud.dart';

class SignUpData {
  Crud crud;

  SignUpData(this.crud);

  postData(String userName, String password, String email, String phone) async {
    var response = await crud.postData(ApiLink.signUp, {
      "username": userName,
      "password": password,
      "email": email,
      "phone": phone,
    });
    return response.fold((l) => l, (r) => r);
  }
}
