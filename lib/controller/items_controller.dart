import 'package:ecommercapp/data/datasource/remote/items/items_data.dart';
import 'package:get/get.dart';

import '../core/class/statusrequest.dart';
import '../core/fuctions/handlingdata.dart';

abstract class ItemsController extends GetxController {
  intialData();
  changeCat(int val); 
  getItems();
}

class ItemsControllerImpl extends ItemsController {

  List categories = [];
  int? selectedCat;
  ItemsData itemsData = ItemsData(Get.find());

  List data = [];

  late StatusRequest statusRequest;

  
  
  @override
  void onInit() {
    intialData();
  }

  @override
  intialData() {
    categories = Get.arguments["categories"];
    selectedCat = Get.arguments["selectedCat"];
      getItems();
  
  }

  @override
  changeCat(val) {
  selectedCat=val;
  update();
  }
  
  @override
  getItems()async {
      statusRequest = StatusRequest.loading;
    var response = await itemsData.getData();
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
    // start back end
      if (response['status'] == "success") {
        data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure ; 
      }
    }
    update();
  
  }
}
