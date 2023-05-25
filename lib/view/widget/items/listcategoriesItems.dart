import 'package:ecommercapp/controller/items_controller.dart';
import 'package:ecommercapp/data/model/categoriesmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/colors.dart';

class ListCategoriesItems extends GetView<ItemsControllerImpl> {
  const ListCategoriesItems({super.key});

  @override
  Widget build(BuildContext context) {
    ItemsControllerImpl itemsControllerImpl = Get.put(ItemsControllerImpl());

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

class Categories extends GetView<ItemsControllerImpl> {
  final int? i;
  final CategoriesModel categoriesModel;
  const Categories({super.key, required this.i, required this.categoriesModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // controller.gotoItems(controller.categories, i!);
        controller.changeCat(i!,categoriesModel.categoriesId!);
      },
      child: Column(
        children: [
          GetBuilder<ItemsControllerImpl>(
            builder: (controller) => Container(
              padding: EdgeInsets.only(bottom: 5, left: 5, right: 5),
              decoration: controller.selectedCat == i
                  ? BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 3, color: AppColor.primaryColor)))
                  : null,
              child: Text(
                "${categoriesModel.categoriesName}",
                style: const TextStyle(fontSize: 20, color: AppColor.grey2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
