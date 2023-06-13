import 'package:ecommercapp/data/datasource/remote/myfavorite_data.dart';
import 'package:get/get.dart';

import '../core/class/statusrequest.dart';
import '../core/fuctions/handlingdata.dart';
import '../core/services/services.dart';
import '../data/model/myfavoriteModel.dart';

class MyFavoriteController extends GetxController {
  MyFavoriteData myFavoriteData = MyFavoriteData(Get.find());

  List<MyFavoriteModel> data = [];

  late StatusRequest statusRequest;

  MyServices myServices = Get.find();

//  key => id items
//  Value => 1 OR 0

  getData() async {
    data.clear();
    statusRequest = StatusRequest.loading;
    var response = await myFavoriteData
        .getData(myServices.sharedPreferences.getString("id")!);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        List responsedata = response['data'];
        data.addAll(responsedata.map((e) => MyFavoriteModel.fromJson(e)));
        print("data");
        print(data);
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
    update();
  }

  deleteDataFromFavorite(String favoriteId) {
    data.clear();

    var response = myFavoriteData.deleteData(favoriteId);

    // Start backend

    data.removeWhere((element) => element.favoriteId == favoriteId);

    // End

    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
