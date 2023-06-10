import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommercapp/controller/favorite_controller.dart';
import 'package:ecommercapp/controller/items_controller.dart';
import 'package:ecommercapp/data/model/itemsmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/colors.dart';
import '../../../core/fuctions/transaltedatabase.dart';
import '../../../linkapi.dart';

class CustomListItems extends GetView<ItemsControllerImpl> {
  final ItemsModel itemsModel;
  // final bool active;

  const CustomListItems({
    super.key,
    required this.itemsModel,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.gotoPageProductDetails(itemsModel);
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  child: Hero(
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
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${itemsModel.itemsPrice}",
                      style: TextStyle(
                          fontSize: 15,
                          color: AppColor.primaryColor,
                          fontFamily: "sans"),
                    ),
                    GetBuilder<FavoriteController>(
                      builder: (controller) => IconButton(
                        onPressed: () {
                        if(  controller.isFavorite[itemsModel.itemsId] == "1"){
                        
                        controller.setFavorite(itemsModel.itemsId , "0");
                        controller.removeFavorite(itemsModel.itemsId!);
                        }
                             controller.setFavorite(itemsModel.itemsId , "1");
                              controller.addFavorite(itemsModel.itemsId!);
                        },
                        icon: Icon(
                        controller.isFavorite[itemsModel.itemsId] == "1"
                              ? Icons.favorite
                              : Icons.favorite_border_outlined,
                          color: AppColor.primaryColor,
                        ),
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
