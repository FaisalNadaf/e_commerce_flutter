import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:e_commerce/common/widgets/icons/t_circular_icon.dart';
import 'package:e_commerce/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return TCurvedEdgesWidget(
        child: Container(
      color: dark ? TColors.darkerGrey : TColors.light,
      child: Stack(
        children: [
          const SizedBox(
            height: 400,
            child: Padding(
              padding: EdgeInsets.all(
                TSizes.productImageRadius * 2,
              ),
              child: Center(
                child: TRoundedImage(
                  imageUrl: TImages.productImage6,
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 30,
            left: TSizes.defaultSpace,
            child: SizedBox(
              height: 80,
              child: ListView.separated(
                separatorBuilder: (_, __) => const SizedBox(
                  width: TSizes.defaultSpace,
                ),
                itemCount: 6,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: const AlwaysScrollableScrollPhysics(),
                itemBuilder: (_, index) => TRoundedImage(
                  width: 80,
                  backgroundColor: dark ? TColors.dark : TColors.white,
                  padding: const EdgeInsets.all(
                    TSizes.sm,
                  ),
                  border: Border.all(
                    color: TColors.primary,
                  ),
                  imageUrl: TImages.productImage6,
                ),
              ),
            ),
          ),
          const TAppBar(
            showBackArrow: true,
            actions: [
              TCircularIcon(
                icon: Iconsax.heart5,
                color: Colors.red,
              )
            ],
          )
        ],
      ),
    ));
  }
}
