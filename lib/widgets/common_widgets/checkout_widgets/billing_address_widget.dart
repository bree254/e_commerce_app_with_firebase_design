import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/text_widgets/section_heading.dart';
import 'package:flutter/material.dart';
class BillingAddressWidget extends StatelessWidget {
  const BillingAddressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeading(
          title: 'Shipping Address',
          buttonTitle: 'Change',
          onPressed: (){},
        ),

        Text('Code with Bree',style: Theme.of(context).textTheme.bodyLarge,),

        const SizedBox(height: TSizes.spaceBtwItems/ 2,),

        Row(
          children: [
            const Icon(Icons.phone,color: Colors.grey,size: 16,),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('+254759633729',style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(width: TSizes.spaceBtwItems /2,),

        Row(
          children: [
            const Icon(Icons.location_history,color: Colors.grey,size: 16,),
            const SizedBox(width: TSizes.spaceBtwItems),
            Expanded(child: Text('South Liana ,maine 87695,USA',style: Theme.of(context).textTheme.bodyMedium,softWrap: true,)),
          ],
        ),


      ],
    );
  }
}
