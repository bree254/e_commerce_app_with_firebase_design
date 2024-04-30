import 'package:e_commerce_firebase/common/styles/shadows.dart';
import 'package:e_commerce_firebase/utils/constants/colors.dart';
import 'package:e_commerce_firebase/utils/constants/image_strings.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/utils/helpers/helper_functions.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/products/product_price__text_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/products/product_tile_text.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/text_widgets/brand_title_text_verified_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import '../icon_widgets/circular_icon_widget.dart';
import '../image_widgets/image_container_rounded_edges_widget.dart';
import '../container_widgets/container_with_rounded_border_widget.dart';

class VerticalProductCardWidget extends StatelessWidget {
  const VerticalProductCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return
      GestureDetector(
        onTap: (){

        },
        child: Container(
        width:180 ,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [ShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark? myColors.darkerGrey:myColors.white,
        ),
        child: Column(
          children: [
            myRoundedContainerWidget(
              height: 180,
              padding: EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? myColors.dark:myColors.light,
              child: Stack(
                children: [
                  //Thumbnail image

                  RoundedEdgeImageContainer(
                    imageUrl: TImages.productImage1,
                  ),

                  //sale tag

                  Positioned(
                    top: 12,
                    child: myRoundedContainerWidget(
                     radius: TSizes.sm,
                      backgroundColor: myColors.secondary.withOpacity(0.8),
                      padding: EdgeInsets.symmetric(horizontal: TSizes.sm,vertical: TSizes.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context).textTheme.labelLarge!.apply(color: myColors.black),
                      ),

                    ),
                  ),
                  //Favourite icon button
                  Positioned(
                    top: 0,
                    right: 0,
                    child: CircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,

                    ),
                  )
                ],
              )
            ),

            //Details
            Padding(
                padding: EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTileText(
                    title: 'Green Nike Air Shoes',
                    smallsize: true,
                  ),
                  SizedBox(height: TSizes.spaceBtwItems/2,),
                  BrandTitleTextVerifiedWidget(
                    title: 'Nike',
                  ),
                  // Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProductPriceTextWidget(price: '35.0'),
                     Container(
                       decoration: BoxDecoration(
                         color: myColors.dark,
                         borderRadius: BorderRadius.only(
                           topLeft: Radius.circular(TSizes.cardRadiusMd),
                           bottomRight: Radius.circular(TSizes.productImageRadius),

                         ),
                       ),
                       child: SizedBox(
                         width: TSizes.iconLg *1.2,
                         height:TSizes.iconLg *1.2,
                         child: Center(
                           child: Icon(Iconsax.add,color: myColors.white,),
                         ),
                       ),
                     ),
                    ],
                  ),

                ],
              ),
            )

          ],
        ),

            ),
      );
  }
}






