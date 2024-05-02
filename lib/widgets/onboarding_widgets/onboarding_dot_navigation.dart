import 'package:e_commerce_firebase/controllers/onboarding_controller.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/utils/device/device_utility.dart';
import 'package:e_commerce_firebase/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:e_commerce_firebase/utils/constants/colors.dart';
class OnBoardingDot extends StatelessWidget {
  const OnBoardingDot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dotController = OnBoardingController.instance;

    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? myColors.light : myColors.dark ,dotHeight: 6
        ),
        controller: dotController.pageController,
        onDotClicked: dotController.dotNavigationClick,
        count: 3,
      ),
    );
  }
}