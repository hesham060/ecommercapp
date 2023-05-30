import 'package:ecommercapp/controller/productdetailscontroller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/constants/colors.dart';

class SubitemsList extends GetView<ProductDetailsControllerImpl> {
  const SubitemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
          controller.subItems.length,
          (index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.center,
              height: 60,
              width: 90,
              decoration: BoxDecoration(
                color: controller.subItems[index]["active"] == "1"
                    ? AppColor.primaryColor
                    : AppColor.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: AppColor.primaryColor,
                ),
              ),
              child: Text(
                controller.subItems[index]['name'],
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: controller.subItems[index]["active"] == "1"
                        ? AppColor.white
                        : AppColor.primaryColor,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
