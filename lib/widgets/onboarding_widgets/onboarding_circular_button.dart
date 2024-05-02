import 'package:e_commerce_firebase/controllers/onboarding_controller.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/utils/device/device_utility.dart';
import 'package:e_commerce_firebase/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_firebase/utils/constants/colors.dart';

class OnBoarding_circular_button extends StatelessWidget {
  const OnBoarding_circular_button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
        right: TSizes.defaultSpace,
        bottom: TDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
            onPressed: (){
              OnBoardingController.instance.nextPage();
            },
            style: ElevatedButton.styleFrom(
              elevation: 0,
              shape: const CircleBorder(
                side: BorderSide.none,
              ),
              backgroundColor: dark ? myColors.primary : Colors.black,
            ),
            child: const Icon(
              Icons.arrow_forward_ios_outlined,
               // color: Colors.white,
            )));
  }
}