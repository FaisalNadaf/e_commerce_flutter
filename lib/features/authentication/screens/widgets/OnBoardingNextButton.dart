import 'package:e_commerce/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/device/device_utility.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      right: TSizes.defaultSpace,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: dark ? TColors.primary : TColors.dark,
          shape: const CircleBorder(),
        ),
        onPressed: () {
          OnboardingController.instance.nextPage();
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
