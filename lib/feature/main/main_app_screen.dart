import 'package:flutter/material.dart';

import '../../../core/constants/app_images.dart';
import '../../../core/styles/app_colors.dart';
import '../../../core/widgets/custom_svg_image.dart';
import '../cart/page/cart_screen.dart';
import '../shop/page/shop_screen.dart';

class MainAppScreen extends StatefulWidget {
  const MainAppScreen({super.key});

  @override
  State<MainAppScreen> createState() => _MainAppScreenState();
}

class _MainAppScreenState extends State<MainAppScreen> {
  int currentIndex = 0;

  final List<Widget> screens = [
    const ShopScreen(),
    const Scaffold(body: Center(child: Text('Search'))),
    const CartScreen(),
    const Scaffold(body: Center(child: Text('Wishlist'))),
    const Scaffold(body: Center(child: Text('Profile'))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: _bottomNavBar(),
    );
  }

  Container _bottomNavBar() {
    return Container(
      padding: const EdgeInsets.only(top: 16),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
           color: AppColors.blackColor.withValues(alpha: 0.09),
            blurRadius: 14,
            spreadRadius: 0,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: CustomSvgImage(path: AppImages.storeSvg),
            activeIcon: CustomSvgImage(
              path: AppImages.storeSvg,
              color: AppColors.primaryColor,
            ),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: CustomSvgImage(path: AppImages.exploreSvg),
            activeIcon: CustomSvgImage(
              path: AppImages.exploreSvg,
              color: AppColors.primaryColor,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: CustomSvgImage(path: AppImages.cartSvg),
            activeIcon: CustomSvgImage(
              path: AppImages.cartSvg,
              color: AppColors.primaryColor,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: CustomSvgImage(path: AppImages.heartSvg),
            activeIcon: CustomSvgImage(
              path: AppImages.heartSvg,
              color: AppColors.primaryColor,
            ),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: CustomSvgImage(path: AppImages.userSvg),
            activeIcon: CustomSvgImage(
              path: AppImages.userSvg,
              color: AppColors.primaryColor,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}