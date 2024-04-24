import 'package:e_commerce_firebase/utils/constants/image_strings.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_firebase/utils/constants/colors.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: myColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
              onPressed: (){

              },
              icon: Image(
                height: TSizes.iconMd,
                width: TSizes.iconMd,
                image: AssetImage(TImages.google),
              )
          ),
        ),
        SizedBox(width: TSizes.spaceBtwItems,),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: myColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
              onPressed: (){

              },
              icon: Image(
                height: TSizes.iconMd,
                width: TSizes.iconMd,
                image: AssetImage(TImages.facebook),
              )
          ),
        ),
        SizedBox(width: TSizes.spaceBtwItems,)
      ],
    );
  }
}