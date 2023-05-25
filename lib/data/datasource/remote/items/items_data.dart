import 'package:ecommercapp/linkapi.dart';

import '../../../../core/class/crud.dart';

class ItemsData  {
  Crud crud;
  ItemsData(this.crud);
  getData(String id ) async {
    var response = await crud.postData(ApiLink.items, {"id": id.toString()});
    return response.fold((l) => l, (r) => r);
  }
}
