import '../../../core/class/crud.dart';
import '../../../linkapi.dart';

class HomePageData {
  Crud crud;

  HomePageData(this.crud);

  getData() async {
    var response = await crud.postData(ApiLink.homePage, {});
    return response.fold((l) => l, (r) => r);
  }
}
