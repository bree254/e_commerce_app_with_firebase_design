import 'package:e_commerce_firebase/common/styles/shadows.dart';
import 'package:e_commerce_firebase/utils/constants/colors.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import 'my_rounded_container.dart';
class VerticalProductCardWidget extends StatelessWidget {
  const VerticalProductCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return  Container(
      width:180 ,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [ShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark? myColors.darkerGrey:myColors.white,
      ),
      child: Column(
        children: [
          myRoundedContainerWidget(
            height: 100,
            padding: EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? myColors.dark:myColors.light,
          ),
        ],
      ),

    );
  }
}
