import 'package:ecommercapp/linkapi.dart';

import '../../../core/class/crud.dart';

class MyFavoriteData {
  Crud crud;
  MyFavoriteData(this.crud);
  getData(String id) async {
    var response = await crud.postData(ApiLink.favoriteView, {"id" : id});
    return response.fold((l) => l, (r) => r);
  }
  deleteData(String id) async {
    var response = await crud.postData(ApiLink.deleteFromFavorite, {"id" : id});
    return response.fold((l) => l, (r) => r);
  }
}