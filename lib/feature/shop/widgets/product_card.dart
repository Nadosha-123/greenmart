import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/functions/navigations.dart';
import '../../../core/styles/app_colors.dart';
import '../../../core/styles/text_styles.dart';
import '../../product_details/page/product_details_screen.dart';
import '../data/product_model.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => pushTo(context, ProductDetailsScreen(product: product)),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.borderColor),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Hero(
                tag: product.heroTag,
                child: Image.network(
                  product.image,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
            ),
            const Gap(8),
            Text(
              product.name,
              style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const Gap(8),
            Text(
              product.unit,
              style: TextStyles.caption2.copyWith(color: AppColors.greyColor),
            ),
            const Gap(12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$${product.price}',
                  style: TextStyles.body.copyWith(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(Icons.add, color: AppColors.whiteColor),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}