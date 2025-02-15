import 'package:e_commerce/features/authentication/screens/widgets/OnBoardingDotNavigation.dart';
import 'package:e_commerce/features/authentication/screens/widgets/OnBoardingNextButton.dart';
import 'package:e_commerce/features/authentication/screens/widgets/onBoardingSkipButton.dart';
import 'package:e_commerce/features/authentication/screens/widgets/onBoardingWidget.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
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

          const OnBoardingDotNavigation(),

          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
