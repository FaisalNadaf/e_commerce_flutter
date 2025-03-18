import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/images/circular_iamge.dart';
import 'package:e_commerce/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:e_commerce/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/enums.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              TRoundedContainer(
                borderRadius: TSizes.sm,
                backgroundColor: TColors.secondary.withOpacity(0.8),
                padding: const EdgeInsets.symmetric(
                  horizontal: TSizes.sm,
                  vertical: TSizes.xs,
                ),
                child: Text(
                  '25%',
                  style: Theme.of(context).textTheme.labelMedium!.apply(
                        color: TColors.black,
                      ),
                ),
              ),
              const SizedBox(width: TSizes.spaceBtwItems),
              const TProductPriceText(
                price: '250',
                lineThrough: true,
              ),
              const SizedBox(width: TSizes.spaceBtwItems),
              const TProductPriceText(
                price: '175',
                isLarge: true,
              ),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwItems / 1.5),
          const TProductTitleText(title: 'Black Nike Chappl'),
          const SizedBox(height: TSizes.spaceBtwItems / 1.5),
          Row(
            children: [
              const TProductTitleText(title: 'Status'),
              const SizedBox(width: TSizes.spaceBtwItems),
              Text(
                'In Stock',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwItems / 1.5),
          Row(
            children: [
              TCircularImage(
                imageUrl: TImages.nikeLogo,
                width: 32,
                height: 32,
                overlayColor: dark ? TColors.white : TColors.black,
              ),
              const TBrandTitleTextWithVerifiedIcon(
                title: 'Nike',
                brandTextSize: TextSizes.medium,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
