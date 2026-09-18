import 'package:flutter/material.dart';
import '../styles/app_colors.dart';
import '../styles/text_styles.dart';

class MainButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const MainButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 67,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(19),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyles.subtitle.copyWith(color: AppColors.whiteColor),
        ),
      ),
    );
  }
}