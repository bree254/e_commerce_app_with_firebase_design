import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_firebase/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';
class RatingsnShareWidget extends StatelessWidget {
  const RatingsnShareWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(Iconsax.star5 ,color: Colors.amber,size: 24,),
            SizedBox(width: TSizes.spaceBtwItems/2,),
            Text.rich(
              TextSpan(
                  children: [
                    TextSpan(text: '5.0',style: Theme.of(context).textTheme.bodyLarge),
                    TextSpan(text: '(199)'),
                  ]
              ),
            ),
          ],
        ),
        IconButton(onPressed: (){}, icon: Icon(Icons.share,size: TSizes.iconMd,)),
      ],
    );
  }
}