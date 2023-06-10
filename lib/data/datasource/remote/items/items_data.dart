import 'package:ecommercapp/linkapi.dart';

import '../../../../core/class/crud.dart';

class ItemsData  {
  Crud crud;
  ItemsData(this.crud);
  getData(String id, String usersid) async {
    var response = await crud.postData(ApiLink.items, {"id": id.toString(),"usersid":usersid});
    return response.fold((l) => l, (r) => r);
  }
}
