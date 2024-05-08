import 'package:e_commerce_firebase/utils/constants/colors.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/utils/helpers/helper_functions.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/icon_widgets/circular_icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class BottomAddToCartWidget extends StatelessWidget {
  const BottomAddToCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace,vertical: TSizes.defaultSpace /2),
      decoration: BoxDecoration(

        color: dark? myColors.darkerGrey : myColors.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(TSizes.cardRadiusLg),
          topRight: Radius.circular(TSizes.cardRadiusLg),
        )


      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircularIcon(

                  icon: Iconsax.minus,
                backgroundColor: myColors.darkGrey,
                width: 40,
                height: 40,
                color: myColors.darkGrey,


              ),
              const SizedBox(width: TSizes.spaceBtwItems,),
              Text('2',style: Theme.of(context).textTheme.titleSmall,),
              const SizedBox(width: TSizes.spaceBtwItems,),
              const CircularIcon(
                icon: Iconsax.add,
                backgroundColor: myColors.black,
                width: 40,
                height: 40,
                color: myColors.darkGrey,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(TSizes.md),
              backgroundColor: myColors.black,
              side: const BorderSide(color: myColors.black),
            ),
            child: const Text('Add To Cart'),

          )
        ],
      ),

    );
  }
}
