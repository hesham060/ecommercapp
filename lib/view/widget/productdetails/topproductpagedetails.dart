import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommercapp/controller/productdetailscontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/colors.dart';
import '../../../linkapi.dart';

class TopProductPageDetails extends GetView<ProductDetailsControllerImpl> {
  const TopProductPageDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 150,
          decoration: const BoxDecoration(
            color: AppColor.primaryColor,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(40),
            ),
          ),
        ),
        Positioned(
          top: 30.0,
          left: Get.width / 4,
          right: Get.width / 4,
          child: Hero(
            tag: "${controller.itemsModel.itemsImage}",
            child: CachedNetworkImage(
              imageUrl:
                  "${ApiLink.imagesItems}/${controller.itemsModel.itemsImage!}",
              height: 250,
            ),
          ),
        ),
      ],
    );
  }
}
