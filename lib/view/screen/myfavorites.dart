
import 'package:ecommercapp/core/class/handlingdataview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/myfavorite_controller.dart';
import '../../core/constants/routes.dart';
import '../widget/customappbar.dart';

class MyFavorite extends StatelessWidget {
  const MyFavorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(MyFavoriteController());
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: GetBuilder<MyFavoriteController>(
            builder: ((controller) => ListView(children: [
                  CustomAppBar(
                    titleAppBar: "Find Product",
                    onPressedIcon: () {},
                    onPressedSearch: () {},
                    onPressedFavorites: () {
                      Get.toNamed(AppRoute.myfavorite);
                    },
                  ),
                  HandlingDataRequest(
                      statusRequest: controller.statusRequest,
                      widget: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: controller.data.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          return Text(controller.data[index].itemsName!);
                        },
                      ))
                ]))),
      ),
    );
  }
}
