import 'package:ecommercapp/controller/productdetailscontroller.dart';
import 'package:ecommercapp/core/constants/colors.dart';
import 'package:ecommercapp/view/widget/productdetails/subitemslist.dart';
import 'package:ecommercapp/view/widget/productdetails/topproductpagedetails.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ProductDetailsControllerImpl controller =
        Get.put(ProductDetailsControllerImpl());
    int price = 0;
    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
            color: AppColor.primaryColor,
            borderRadius: BorderRadius.circular(10)),
        child: MaterialButton(
            onPressed: () {},
            child: Text("Add To Cart",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: AppColor.backgroundColor))),
      ),
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                const TopProductPageDetails(),
                const SizedBox(
                  height: 120,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${controller.itemsModel.itemsName}",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(color: AppColor.secondColor),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "${controller.itemsModel.itemsDesc}${controller.itemsModel.itemsDesc}${controller.itemsModel.itemsDesc}${controller.itemsModel.itemsDesc}${controller.itemsModel.itemsDesc}",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColor.secondColor,
                            fontSize: 15,
                            fontFamily: "sans"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      Row(
                        children: [
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.add)),
                              Container(
                                alignment: Alignment.center,
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: AppColor.primaryColor)),
                                child: Text(
                                  "2",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(fontSize: 30, height: 1),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.remove)),
                            ],
                          ),
                          const Spacer(),
                          Text("20.0\$",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: AppColor.red, fontSize: 25)),
                        ],
                      ),
                      // COLOR SECTION
                      Text(
                        "Color",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(color: AppColor.secondColor),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SubitemsList(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
