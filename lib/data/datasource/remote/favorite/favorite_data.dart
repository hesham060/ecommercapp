import 'package:ecommercapp/linkapi.dart';

import '../../../../core/class/crud.dart';

class FavoritesData {
  Crud crud;
  FavoritesData(this.crud);
  addData(String usersid, String itemsId) async {
    var response = await crud
        .postData(ApiLink.favoriteAdd, {"usersid": usersid, "itemsid": itemsId});
    return response.fold((l) => l, (r) => r);
  }

  deleteData(String usersid, String itemsId) async {
    var response = await crud
        .postData(ApiLink.favoriteRemove, {"usersid": usersid, "itemsid": itemsId});
    return response.fold((l) => l, (r) => r);
  }
}
