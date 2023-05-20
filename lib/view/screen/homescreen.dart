import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/homescreencontroller.dart';
import '../widget/home/custombottomappbarhome.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
      builder: (controller) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.shopping_basket_outlined),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: CustomBottomAppBarHome(),
        body: controller.listPage.elementAt(controller.currentPage),
      ),
    );
  }
}
