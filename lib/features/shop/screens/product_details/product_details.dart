import 'package:e_commerce/features/shop/screens/product_details/widgets/product_attribute.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/product_rating_share.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // product image slider

            TProductImageSlider(),

            // product details

            Padding(
              padding: EdgeInsets.only(
                right: TSizes.defaultSpace,
                left: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  // Rating  and share
                  TRatingAndShare(),

                  // price, title, Stock, and brand
                  TProductMetaData(),

                  // Attributes
                  TProductAttributes(),

                  // heckout button
                  // Description
                  // reviews
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
