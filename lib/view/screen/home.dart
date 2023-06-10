import 'package:ecommercapp/core/class/handlingdataview.dart';
import 'package:ecommercapp/core/constants/routes.dart';
import 'package:ecommercapp/view/widget/customappbar.dart';
import 'package:ecommercapp/view/widget/home/customcardhome.dart';
import 'package:ecommercapp/view/widget/home/customtitlehome.dart';
import 'package:ecommercapp/view/widget/home/listcategorieshome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/home/home_controller.dart';
import '../widget/home/listitemshome.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return GetBuilder<HomeControllerImp>(
      builder: (controller) => HandlingDataRequest(
        statusRequest: controller.statusRequest,
        widget: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: ListView(children: [
            CustomAppBar(
              titleAppBar: "Find Product",
              onPressedIcon: () {},
              onPressedSearch: () {},
              onPressedFavorites: () {
              
              Get.toNamed(AppRoute.myfavorite);
              
              },
            ),
            CustomCardHome(title: "A Summer Surprise", body: "Cash back 20%"),
            ListCategoriesHome(),
            CustomTitleHome(title: "Product for you"),
            ListItemsHome(),
            CustomTitleHome(title: "Offers"),
            ListItemsHome(),
          ]),
        ),
      ),
    );
  }
}
