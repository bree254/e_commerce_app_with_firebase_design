import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
class BillingAmountWidget extends StatelessWidget {
  const BillingAmountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Subtotal

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal',style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$256.0',style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        const SizedBox(width: TSizes.spaceBtwItems/2,),

        //Shipping fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping fee',style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$56.0',style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        const SizedBox(width: TSizes.spaceBtwItems/2,),

        //Tax fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax fee',style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$16.0',style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        const SizedBox(width: TSizes.spaceBtwItems/2,),

        //Grand total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Grand total',style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$16.0',style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        const SizedBox(width: TSizes.spaceBtwItems/2,),



      ],
    );
  }
}
