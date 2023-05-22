import 'package:ecommercapp/linkapi.dart';

import '../../../../core/class/crud.dart';

class ItemsData  {
  Crud crud;
  ItemsData(this.crud);
  getData() async {
    var response = await crud.postData(ApiLink.items, {});
    return response.fold((l) => l, (r) => r);
  }
}
