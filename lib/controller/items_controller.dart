import 'package:ecommercapp/data/datasource/remote/items/items_data.dart';
import 'package:ecommercapp/data/model/itemsmodel.dart';
import 'package:get/get.dart';
import '../core/class/statusrequest.dart';
import '../core/fuctions/handlingdata.dart';

abstract class ItemsController extends GetxController {
  intialData();
  changeCat(int val, String catVal);
  getItems(
    String categoryid,
  );
  gotoPageProductDetails(ItemsModel itemsModel);
}

class ItemsControllerImpl extends ItemsController {
  List categories = [];
  int? selectedCat;
  String? catid;
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
    catid = Get.arguments["categoryid"];
    getItems(catid!);
  }

  @override
  changeCat(val, catVal) {
    selectedCat = val;
    catid = catVal;
    getItems(catid!);
    update();
  }

  @override
  getItems(categoryid) async {
    data.clear();
    statusRequest = StatusRequest.loading;
    var response = await itemsData.getData(categoryid);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // start back end
      if (response['status'] == "success") {
        data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  gotoPageProductDetails(itemsModel) {
    Get.toNamed("productDetails", arguments: {"itemsModel": itemsModel});
  }
}
