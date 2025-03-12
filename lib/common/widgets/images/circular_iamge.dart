import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key,
    this.applyImageRadius = true,
    this.isNetworkImage = false,
    required this.imageUrl,
    this.borderRadius = 100,
    this.height = 56,
    this.width = 56,
    this.border,
    this.backgroundColor,
    this.fit = BoxFit.contain,
    this.padding = TSizes.sm,
    this.onPressed,
    this.overlayColor,
  });

  final bool applyImageRadius, isNetworkImage;
  final double height, width, padding;
  final String imageUrl;
  final BoxBorder? border;
  final Color? backgroundColor;
  final Color? overlayColor;

  final BoxFit? fit;
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
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor ?? (dark ? TColors.black : TColors.white),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Image(
          image: isNetworkImage
              ? NetworkImage(imageUrl)
              : AssetImage(imageUrl) as ImageProvider,
          fit: fit,
          color: overlayColor,
        ),
      ),
    );
  }
}
