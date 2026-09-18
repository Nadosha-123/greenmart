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
          Image.asset(
            AppImages.welcome, 
            fit: BoxFit.cover, 
            width: double.infinity, 
            height: double.infinity,
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
                Text(
                  'Get your groceries in as fast as one hour', 
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