import 'package:e_commerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import 'package:e_commerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  // App bar
                  const HomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  // Search bar
                  const TSearchContainer(text: "Search in Store"),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  // Categories
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(
                            title: "Product Categories",
                            textColor: TColors.white,
                            showActionButton: false),
                        const SizedBox(height: TSizes.spaceBtwItems),
                        const THomeCategories()
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Body

            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: TRoundedImage(dark: dark),
            )
          ],
        ),
      ),
    );
  }
}

class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key,
    required this.applyImageRadius,
    required this.isNetworkImage,
    required this.borderRadius,
    this.height,
    this.width,
    this.imageUrl,
    this.border,
    this.backgroundColor,
    this.fit,
    this.padding,
    this.onPressed,
  });

  final bool applyImageRadius, isNetworkImage;
  final double? height, width;
  final String? imageUrl;
  final BoxBorder? border;
  final Color? backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final double borderRadius;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: Image(
            image: AssetImage(TImages.promoBanner1),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
