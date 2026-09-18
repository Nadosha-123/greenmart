import 'package:flutter/material.dart';
import '../styles/app_colors.dart';
import '../styles/text_styles.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final String? hintText;
  final bool isPassword;
  final TextEditingController? controller;

  const CustomTextField({
    super.key,
    required this.title,
    this.hintText,
    this.isPassword = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyles.caption1.copyWith(color: AppColors.greyColor),
        ),
        TextField(
          controller: controller,
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: hintText,
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.primaryColor),
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.borderColor),
            ),
          ),
        ),
      ],
    );
  }
}