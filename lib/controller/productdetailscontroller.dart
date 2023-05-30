import 'package:ecommercapp/data/model/itemsmodel.dart';
import 'package:get/get.dart';

abstract class ProductDetailsController extends GetxController {
  initialData();
}

class ProductDetailsControllerImpl extends ProductDetailsController {
// this data is cant be null so we gave it null value
  late ItemsModel itemsModel;

  List subItems = [
    {"name": "red", "id": 1, "active": '0'},
    {"name": "yellow", "id": 2, "active": '0'},
    {"name": "black", "id": 3, "active": '1'},
  ];

  @override
  void onInit() {
    initialData();
    super.onInit();
  }

  @override
  initialData() {
    itemsModel = Get.arguments["itemsModel"];
  }
}
