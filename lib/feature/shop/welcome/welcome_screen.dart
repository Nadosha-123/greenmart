import 'package:flutter/material.dart';

import '../../../core/constants/app_images.dart';
import '../../../core/styles/app_colors.dart';
import '../../../core/styles/text_styles.dart';
import '../../../core/widgets/custom_svg_image.dart';
import '../../../core/widgets/main_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // خلفية صورة الشخص (PNG) تملأ الشاشة بالكامل وبشكل صحيح
          Positioned.fill(
            child: Image.asset(
              AppImages.welcomePng, // (ملاحظة: غير اسم المتغير لاحقاً في الapp_images ليكون معبراً للصورة)
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const CustomSvgImage(path: AppImages.carrotSvg),
                const SizedBox(height: 15),
                Text(
                  'Welcome\nto our store', 
                  textAlign: TextAlign.center, 
                  style: TextStyles.headline1.copyWith(color: AppColors.whiteColor),
                ),
                const SizedBox(height: 10),
                Text(
                  'Get your groceries in as fast as one hour', 
                  textAlign: TextAlign.center,
                  style: TextStyles.caption1.copyWith(color: AppColors.greyColor),
                ),
                const SizedBox(height: 40),
                MainButton(
                  text: 'Get Started', 
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}