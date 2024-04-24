import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/utils/constants/text_strings.dart';
import 'package:e_commerce_firebase/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_firebase/utils/constants/colors.dart';

class TermsandConditions extends StatelessWidget {
  const TermsandConditions({
    super.key,

  });


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(
              value: true,
              onChanged: (value){

              }
          ),),
        SizedBox(width: TSizes.spaceBtwItems,),
        Text.rich(
            TextSpan(
                children: [
                  TextSpan(text: '${TTexts.iAgreeTo} ',style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(text: '${TTexts.privacyPolicy} ' ,style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? myColors.white : myColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? myColors.white : myColors.primary,
                  )),
                  TextSpan(text: '${TTexts.and} ',style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(text: '${TTexts.termsOfUse} ',style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? myColors.white : myColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? myColors.white : myColors.primary,
                  )),
                ]

            ))
      ],
    );
  }
}