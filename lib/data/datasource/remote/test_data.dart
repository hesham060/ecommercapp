import 'package:ecommercapp/linkapi.dart';

import '../../../core/class/crud.dart';

class TestData {
  Crud crud;

  TestData(this.crud);

  getData() async {
    var response = await crud.postData(ApiLink.test, {});
    return response.fold((l) => l, (r) => r);
  }
}
