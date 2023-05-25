import 'package:ecommercapp/controller/items_controller.dart';
import 'package:ecommercapp/core/class/handlingdataview.dart';
import 'package:ecommercapp/data/model/itemsmodel.dart';
import 'package:ecommercapp/view/widget/items/customlistitems.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/customappbar.dart';
import '../widget/items/listcategoriesItems.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsControllerImpl());
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(20),
      child: ListView(
        children: [
          CustomAppBar(
            titleAppBar: "Find Product",
            onPressedIcon: () {},
            onPressedSearch: () {},
          ),
          SizedBox(
            height: 20,
          ),
          ListCategoriesItems(),
          GetBuilder<ItemsControllerImpl>(
              builder: (controller) => HandlingDataRequest(
                  statusRequest: controller.statusRequest,
                  widget: GridView.builder(
                      shrinkWrap: true,
                      itemCount: controller.data.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, childAspectRatio: 0.7),
                      itemBuilder: (context, index) {
                        return CustomListItems(
                            itemsModel:
                                ItemsModel.fromJson(controller.data[index]));
                      })))
        ],
      ),
    ));
  }
}
