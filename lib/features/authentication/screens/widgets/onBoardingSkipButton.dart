import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

Positioned onBoardingSkipButton() {
  return Positioned(
    top: TDeviceUtils.getAppBarHeight(),
    right: TSizes.defaultSpace,
    child: TextButton(
      onPressed: () {},
      child: Text(
        "skip",
      ),
    ),
  );
}
