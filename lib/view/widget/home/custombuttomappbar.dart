import 'package:ecommercapp/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/home/home_controller.dart';

class CustomButtonAppBar extends GetView<HomeControllerImp> {
  final VoidCallback? onPressed;
  final String textbutton;
  final IconData iconData;
 final bool? activeColor ;

  CustomButtonAppBar( {
    required this.onPressed,
    required this.textbutton,
    required this.iconData,
    required this.activeColor,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: onPressed,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              iconData,
              color: activeColor == true ? AppColor.primaryColor : AppColor.grey2,
            ),
            Text(
              textbutton,
              style: TextStyle(
                color:
                    activeColor == true ? AppColor.primaryColor : Colors.black,
              ),
            ),
          ],
        ));
  }
}
