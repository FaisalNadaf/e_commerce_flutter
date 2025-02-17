import 'package:e_commerce/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

Positioned onBoardingSkipButton() {
  final controller = OnboardingController.instance;

  return Positioned(
    top: TDeviceUtils.getAppBarHeight(),
    right: TSizes.defaultSpace,
    child: TextButton(
      onPressed: () {
        controller.skipPage();
      },
      child:const Text(
        "skip",
      ),
    ),
  );
}
