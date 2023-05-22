import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommercapp/data/model/itemsmodel.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../linkapi.dart';

class CustomListItems extends StatelessWidget {
  final ItemsModel itemsModel;

  const CustomListItems({super.key, required this.itemsModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 120,
                child: CachedNetworkImage(
                  imageUrl: ApiLink.imagesItems + "/" + itemsModel.itemsImage!,
                ),
              ),
              SizedBox(height: 20),
              Row(
              children: [
              Text("Rating"),
              SizedBox(width: 30),
              ...List.generate(5, (index) => Icon(Icons.star,size: 15,))
              ],
              ),
              SizedBox(
              height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${itemsModel.itemsPrice}",
                    style: TextStyle(
                        fontSize: 18,
                        color: AppColor.primaryColor,
                        fontFamily: "sans"),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border_outlined,
                        color: AppColor.primaryColor,
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
