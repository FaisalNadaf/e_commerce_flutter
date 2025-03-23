import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductReviewScreen extends StatelessWidget {
  const TProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return const Scaffold(
      appBar: TAppBar(
        title: Text(
          'Reviews & Ratings',
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Rating and review and are from peoplw who use the same type of accorices that you wanyt to use ', ),
              SizedBox(height: TSizes.spaceBtwItems),
              
            ],
          ),
        ),
      ),
    );
  }
}
