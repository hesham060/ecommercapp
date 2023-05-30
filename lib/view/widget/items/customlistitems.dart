import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommercapp/controller/items_controller.dart';
import 'package:ecommercapp/data/model/itemsmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/colors.dart';
import '../../../core/fuctions/transaltedatabase.dart';
import '../../../linkapi.dart';

class CustomListItems extends GetView<ItemsControllerImpl> {
  final ItemsModel itemsModel;

  const CustomListItems({super.key, required this.itemsModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
      controller.gotoPageProductDetails(itemsModel);},
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  child: Hero
                  (
                   tag: "${itemsModel.itemsImage}",
                    child: CachedNetworkImage(
                      imageUrl:
                          ApiLink.imagesItems + "/" + itemsModel.itemsImage!,
                        
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // name of product
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                        "${translateDatabase(itemsModel.itemsNameAr, itemsModel.itemsName)}")
                  ],
                ),
                Row(
                  children: [
                    Text("Rating"),
                    SizedBox(width: 30),
                    ...List.generate(
                        5,
                        (index) => Icon(
                              Icons.star,
                              size: 15,
                            ))
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${itemsModel.itemsPrice}",
                      style: TextStyle(
                          fontSize: 15,
                          color: AppColor.primaryColor,
                          fontFamily: "sans"),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border_outlined,
                        color: AppColor.primaryColor,
                      ),
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
