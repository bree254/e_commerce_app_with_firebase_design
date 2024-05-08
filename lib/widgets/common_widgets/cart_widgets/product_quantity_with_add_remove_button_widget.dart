import 'package:e_commerce_firebase/widgets/common_widgets/icon_widgets/circular_icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_firebase/utils/constants/colors.dart';
import 'package:e_commerce_firebase/utils/constants/image_strings.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class ProductQuantityAddRemoveWidget extends StatelessWidget {
  const ProductQuantityAddRemoveWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [

        // add and remove buttons

        CircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: TSizes.md,
          color: THelperFunctions.isDarkMode(context) ?myColors.white : myColors.black,
          backgroundColor: THelperFunctions.isDarkMode(context) ?myColors.darkerGrey : myColors.light,
        ),
        SizedBox(height: TSizes.spaceBtwItems,),
        Text(
          '2',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        SizedBox(height: TSizes.spaceBtwItems,),

        CircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: TSizes.md,
          color: myColors.white ,
          backgroundColor:  myColors.primary,
        ),
      ],
    );
  }
}
