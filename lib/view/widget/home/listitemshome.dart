import 'package:ecommercapp/controller/home/home_controller.dart';
import 'package:ecommercapp/data/model/itemsmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/colors.dart';
import '../../../linkapi.dart';

class ListItemsHome extends GetView<HomeControllerImp> {
  const ListItemsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
          itemCount: controller.items.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, i) {
            return ItemsHome(
                itemsModel: ItemsModel.fromJson(controller.items[i]));
          }),
    );
  }
}

class ItemsHome extends StatelessWidget {
  final ItemsModel itemsModel;
  ItemsHome({super.key, required this.itemsModel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Image.network(
            "${ApiLink.imagesItems}/${itemsModel.itemsImage}",
            height: 100,
            width: 150,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: AppColor.black.withOpacity(0.3),
              borderRadius: BorderRadius.circular(20)),
          height: 120,
          width: 200,
        ),
        Positioned(
          left: 10,
          child: Text(
            "${itemsModel.itemsName}",
            style: TextStyle(
                color: Colors.white,
                // fontWeight: FontWeight.bold,
                fontSize: 14),
          ),
        ),
      ],
    );
  }
}
