import 'package:e_commerce/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
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

            TProductImageSlider()

            // product details
          ],
        ),
      ),
    );
  }
}
