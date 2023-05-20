import 'package:flutter/material.dart';

import '../widget/customappbar.dart';
import '../widget/items/listcategoriesItems.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CustomAppBar(
            titleAppBar: "Find Product",
            onPressedIcon: () {},
            onPressedSearch: () {},
          ),
          ListCategoriesItems(),
        ],
      ),
    );
  }
}
