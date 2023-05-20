import 'package:ecommercapp/view/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int currentPage);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentPage = 0;
  List<Widget> listPage = [
    const Home(),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Settings"),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("profile"),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("favorite"),
      ],
    ),
  ];
  @override
  changePage(int i) {
    currentPage = i;
    update();
  }

  List titleBottomAppBar = [
    "home",
    "settings",
    "profile",
    "favorite",
  ];
}
