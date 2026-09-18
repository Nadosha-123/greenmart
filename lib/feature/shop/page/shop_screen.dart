import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/constants/app_images.dart';
import '../../../core/styles/app_colors.dart';
import '../../../core/styles/text_styles.dart';
import '../../../core/widgets/custom_svg_image.dart';
import '../../../core/widgets/custom_text_field.dart';
import '../data/dummy_data.dart';
import '../widgets/home_carousel.dart';
import '../widgets/home_grid.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomSvgImage(
          path: AppImages.logoSvg,
          color: AppColors.primaryColor,
          height: 50,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CustomTextField(title: '', hintText: 'Search for products ..'),
            const Gap(12),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 20,
                  children: [
                    HomeCarousel(title: 'Exclusive Offer', list: offersList),
                    HomeCarousel(title: 'Best Selling', list: bestSellingList),
                    const Text("Picks for you", style: TextStyles.title1),
                    ProductsGrid(list: allProducts),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
