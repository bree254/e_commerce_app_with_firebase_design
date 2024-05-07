import 'package:e_commerce_firebase/utils/constants/colors.dart';
import 'package:e_commerce_firebase/utils/constants/enums.dart';
import 'package:e_commerce_firebase/utils/constants/image_strings.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/utils/helpers/helper_functions.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/container_widgets/container_with_rounded_border_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/image_widgets/circular_image_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/products/product_price__text_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/products/product_tile_text.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/text_widgets/brand_title_text_verified_widget.dart';
import 'package:flutter/material.dart';
class ProductMetaDataWidget extends StatelessWidget {
  const ProductMetaDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Sale tag
        Row(
          children: [
            RoundedContainerWidget(
              radius: TSizes.sm,
              backgroundColor: myColors.secondary.withOpacity(0.8),
              padding: EdgeInsets.symmetric(horizontal: TSizes.sm,vertical: TSizes.xs),
              child: Text(
                  '25%',
                  style: Theme.of(context).textTheme.labelLarge!.apply(color: myColors.black),

            ),
            ),
            SizedBox(width: TSizes.spaceBtwItems,),

            //Price
            Text(
              '\$250',
              style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),

            ),
            SizedBox(height: TSizes.spaceBtwItems,),
            ProductPriceTextWidget(price: '175',isLarge: true,),
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems /1.5),

        // Title
        ProductTileText(title: 'Green Nike Sports Shirt'),
        SizedBox(height: TSizes.spaceBtwItems /1.5),

        // Stock
        Row(
          children: [
            ProductTileText(title: 'Status'),
            SizedBox(width: TSizes.spaceBtwItems /1.5),

            Text(
              'In stock',
              style: Theme.of(context).textTheme.titleMedium,

            ),
            SizedBox(height: TSizes.spaceBtwItems /1.5),
          ],
        ),

        // Brand
        Row(
          children: [
            CircularImageWidget(
                image: TImages.cosmeticsIcon,
              width: 32,
              height: 32,
              overlayColor: darkMode ? myColors.white:myColors.black,
            ),
            BrandTitleTextVerifiedWidget(
                title: 'Nike',
              brandTextSize: TextSizes.medium,
            ),
          ],
        )

      ],
    );
  }
}
