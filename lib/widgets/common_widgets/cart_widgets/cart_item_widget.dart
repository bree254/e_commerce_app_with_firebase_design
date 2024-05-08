import 'package:e_commerce_firebase/widgets/common_widgets/image_widgets/image_container_rounded_edges_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/products/product_tile_text.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/text_widgets/brand_title_text_verified_widget.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_firebase/utils/constants/colors.dart';
import 'package:e_commerce_firebase/utils/constants/image_strings.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/utils/helpers/helper_functions.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //Image
        RoundedEdgeImageContainer(
          imageUrl: TImages.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(TSizes.sm),
          backgroundColor: THelperFunctions.isDarkMode(context) ? myColors.darkerGrey : myColors.light,
        ),

        const SizedBox(width: TSizes.spaceBtwItems,),

        //title,price and Size

        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BrandTitleTextVerifiedWidget(
                  title: 'Nike'
              ),
              const Flexible(
                child: ProductTileText(
                    title: 'Black Sports shoes'),
              ),

              //ATTRIBUTES
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(text: 'Color',style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: 'Green',style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: 'Size',style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: 'UK 08',style: Theme.of(context).textTheme.bodySmall),
                      ]
                  )
              )
            ],
          ),
        )

      ],
    );
  }
}