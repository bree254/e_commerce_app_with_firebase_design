import 'package:e_commerce_firebase/utils/constants/colors.dart';
import 'package:e_commerce_firebase/utils/constants/image_strings.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/utils/helpers/helper_functions.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/container_widgets/container_with_rounded_border_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/text_widgets/section_heading.dart';
import 'package:flutter/material.dart';
class BillingPaymentWidget extends StatelessWidget {
  const BillingPaymentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return  Column(
      children: [
        SectionHeading(
            title: 'Payment method',
          buttonTitle: 'Change',
          onPressed: (){

          },
        ),
        const SizedBox(height: TSizes.spaceBtwItems/ 2,),
        Row(
          children: [
            RoundedContainerWidget(
              width: 60,
              height: 35,
              backgroundColor: dark ? myColors.light : myColors.white ,
              padding: const EdgeInsets.all(TSizes.sm),
              child: const Image(image: AssetImage(TImages.paypal),fit: BoxFit.contain,),
            ),
            const SizedBox(height: TSizes.spaceBtwItems/ 2,),
            Text('PayPal',style: Theme.of(context).textTheme.bodyLarge,),

          ],
        )

      ],
    );
  }
}
