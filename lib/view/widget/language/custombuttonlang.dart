import 'package:ecommercapp/core/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomButtonLang extends StatelessWidget {
  final String textButton;
  final VoidCallback? onPressed;
  const CustomButtonLang(
      {super.key, required this.textButton, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      width: double.infinity,
      child: MaterialButton(
        color: AppColor.primaryColor,
        onPressed: onPressed,
        child: Text(
          textButton,
        style: const TextStyle(fontWeight: FontWeight.bold)),
    ));
  }
}
