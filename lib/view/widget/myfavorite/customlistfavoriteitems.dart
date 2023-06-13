import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommercapp/controller/myfavorite_controller.dart';
import 'package:ecommercapp/data/model/myfavoriteModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/colors.dart';
import '../../../core/fuctions/transaltedatabase.dart';
import '../../../linkapi.dart';

class CustomListFavoriteItems extends GetView<MyFavoriteController> {
  final MyFavoriteModel myfavoriteModel;
  // final bool active;

  const CustomListFavoriteItems({
    super.key,
    required this.myfavoriteModel,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // controller.gotoPageProductDetails(itemsModel);
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
                    tag: "${myfavoriteModel.itemsImage}",
                    child: CachedNetworkImage(
                      imageUrl: ApiLink.imagesItems +
                          "/" +
                          myfavoriteModel.itemsImage!,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // name of product
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                        "${translateDatabase(myfavoriteModel.itemsNameAr, myfavoriteModel.itemsName)}")
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
                      "${myfavoriteModel.itemsPrice}",
                      style: TextStyle(
                          fontSize: 15,
                          color: AppColor.primaryColor,
                          fontFamily: "sans"),
                    ),
                  IconButton(onPressed: () {
                    
                    controller.deleteDataFromFavorite(myfavoriteModel.favoriteId!);
                  }, icon: Icon(Icons.delete_outline_outlined))
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
