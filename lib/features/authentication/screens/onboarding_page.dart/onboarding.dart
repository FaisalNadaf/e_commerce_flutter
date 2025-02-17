import 'package:e_commerce/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:e_commerce/features/authentication/screens/onboarding_page.dart/widgets/OnBoardingDotNavigation.dart';
import 'package:e_commerce/features/authentication/screens/onboarding_page.dart/widgets/OnBoardingNextButton.dart';
import 'package:e_commerce/features/authentication/screens/onboarding_page.dart/widgets/onBoardingSkipButton.dart';
import 'package:e_commerce/features/authentication/screens/onboarding_page.dart/widgets/onBoardingWidget.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Onboarding extends StatelessWidget {
  Onboarding({super.key});

  final controller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: (index) => controller.updatePageIndicator,
            children: const [
              onBoardingWidget(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              onBoardingWidget(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              onBoardingWidget(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),
// skip button
          onBoardingSkipButton(),

          OnBoardingDotNavigation(),

          OnBoardingNextButton(),
        ],
      ),
    );
  }
}
