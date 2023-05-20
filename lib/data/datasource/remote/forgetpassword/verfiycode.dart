import '../../../../core/class/crud.dart';
import '../../../../linkapi.dart';

class VerfiycodeForgetPasswordData {
  Crud crud;

  VerfiycodeForgetPasswordData(this.crud);

  postData(String email, String verifycode) async {
    var response = await crud.postData(ApiLink.verfiycodeForgetPassword, {
      "email": email,
      "verifycode": verifycode,
    });
    return response.fold((l) => l, (r) => r);
  }
}
