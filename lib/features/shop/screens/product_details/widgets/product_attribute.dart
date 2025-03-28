import 'package:e_commerce/common/widgets/chips/choice_chip.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';

import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return SingleChildScrollView(
      child: Column(
        children: [
          TRoundedContainer(
            padding: const EdgeInsets.all(
              TSizes.md,
            ),
            backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
            child: Column(
              children: [
                Row(
                  children: [
                    const TSectionHeading(
                      title: 'Variations',
                      showActionButton: false,
                    ),
                    const SizedBox(
                      width: TSizes.spaceBtwItems,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            TProductTitleText(
                              title: 'Price : ',
                              smallSize: true,
                            ),
                            TProductPriceText(
                              price: '25',
                              lineThrough: true,
                            ),
                            SizedBox(
                              width: TSizes.spaceBtwItems,
                            ),
                            TProductPriceText(
                              price: '20',
                            ),
                          ],
                        ),
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
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwItems / 2),
                const TProductTitleText(
                  title:
                      'this is a description of the product of max 4 lines and it will be shown in the product details screen of the app',
                  smallSize: true,
                  maxLines: 4,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),

          // attributes
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TSectionHeading(
                title: 'Colors',
                showActionButton: false,
              ),
              SizedBox(
                height: TSizes.spaceBtwItems / 2,
              ),
              Wrap(
                children: [
                  TChoiceChip(
                    text: 'Green',
                    selected: false,
                  ),
                  TChoiceChip(
                    text: 'Red',
                    selected: true,
                  ),
                  TChoiceChip(
                    text: 'Blue',
                    selected: false,
                  ),
                ],
              ),
            ],
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TSectionHeading(
                title: 'Sizes',
                showActionButton: false,
              ),
              SizedBox(
                height: TSizes.spaceBtwItems / 2,
              ),
              Wrap(
                spacing: 8,
                children: [
                  TChoiceChip(
                    text: 'EU 34',
                    selected: true,
                  ),
                  TChoiceChip(
                    text: 'EU 36',
                    selected: false,
                  ),
                  TChoiceChip(
                    text: 'EU 40',
                    selected: false,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
