import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

class CustomTextSignUpOrSignIn extends StatelessWidget {
  final String textOne;
  final String textTwo;
  final VoidCallback onTap;
  const CustomTextSignUpOrSignIn(
      {super.key,
      required this.textOne,
      required this.textTwo,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(textOne),
        InkWell(
            onTap: onTap,
            child: Text(textTwo,
                style: const TextStyle(
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.bold))),
      ],
    );
  }
}
