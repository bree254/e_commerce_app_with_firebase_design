import 'package:e_commerce_firebase/controllers/onboarding_controller.dart';
import 'package:e_commerce_firebase/utils/constants/image_strings.dart';
import 'package:e_commerce_firebase/utils/constants/text_strings.dart';
import 'package:e_commerce_firebase/widgets/onboarding_widgets/onboarding_dot_navigation.dart';
import 'package:e_commerce_firebase/widgets/onboarding_widgets/onboarding_page_widget.dart';
import 'package:e_commerce_firebase/widgets/onboarding_widgets/onboarding_skip_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_commerce_firebase/widgets/onboarding_widgets/onboarding_circular_button.dart';

class OnBoardingScreen extends StatelessWidget {
   OnBoardingScreen({super.key});

  final OnBoardingController _controller = Get.put(OnBoardingController());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          //horizontal scrollable pages
          PageView(
            controller: _controller.pageController,
            onPageChanged: _controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image:TImages.onBoardingImage1,
                title:TTexts.onBoardingTitle1,
                subTitle:TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image:TImages.onBoardingImage2,
                title:TTexts.onBoardingTitle2,
                subTitle:TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image:TImages.onBoardingImage3,
                title:TTexts.onBoardingTitle3,
                subTitle:TTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          //skip button
          const OnBoardingSkip(),
          //dot navigation button
          const OnBoardingDot(),
          //circular button
          const OnBoarding_circular_button()
        ],
       
      ),
    );
  }
}








