import 'package:ecommercapp/controller/homescreencontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custombuttomappbar.dart';

class CustomBottomAppBarHome extends StatelessWidget {
  const CustomBottomAppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenControllerImp>(
      builder: (controller) => BottomAppBar(
        notchMargin: 8,
        shape: CircularNotchedRectangle(),
        child: Row(children: [
          ...List.generate(controller.listPage.length + 1, ((index) {
            int i = index > 2 ? index - 1 : index;
            return index == 2
                ? Spacer()
                : CustomButtonAppBar(
                    textbutton: controller.titleBottomAppBar[i],
                    iconData: Icons.home,
                    onPressed: () {
                      controller.changePage(i);
                    },
                    activeColor: controller.currentPage == i ? true : false,
                  );
          }))
        ]),
      ),
    );
  }
}
