import 'package:ecommercapp/controller/home/home_controller.dart';
import 'package:ecommercapp/data/model/categoriesmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/constants/colors.dart';
import '../../../linkapi.dart';

class ListCategoriesItems extends GetView<HomeControllerImp> {
  const ListCategoriesItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: controller.categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Categories(
            i: index,
            categoriesModel:
                CategoriesModel.fromJson(controller.categories[index]),
          );
        },
      ),
    );
  }
}

class Categories extends GetView<HomeControllerImp> {
  final int? i;
  final CategoriesModel categoriesModel;
  const Categories({super.key, required this.i, required this.categoriesModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.gotoItems(controller.categories, i!);
      },
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColor.thirdColor,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 70,
            width: 70,
            child: SvgPicture.network(
                "${ApiLink.imagesCategories}/${categoriesModel.categoriesImage}",
                color: AppColor.secondColor),
          ),
          Text(
            "${categoriesModel.categoriesName}",
            style: const TextStyle(fontSize: 13, color: AppColor.black),
          ),
        ],
      ),
    );
  }
}
