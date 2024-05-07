import 'package:e_commerce_firebase/utils/constants/image_strings.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/utils/helpers/helper_functions.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/icon_widgets/circular_icon_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/image_widgets/image_container_rounded_edges_widget.dart';
import 'package:e_commerce_firebase/widgets/custom_widgets/curved_edges_widget.dart';
import 'package:e_commerce_firebase/widgets/custom_widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_firebase/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';

class ProductDetailImageSliderWidget extends StatelessWidget {
  const ProductDetailImageSliderWidget({
    super.key,

  });


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return CurvedEdgesWidget(
      child: Container(
        color: dark ? myColors.darkerGrey :myColors.light,
        child: Stack(
          children: [
            // Main large image
            SizedBox(
              height:400,
              child: Padding(
                padding: const EdgeInsets.all(TSizes.productImageRadius * 2),
                child: Center(child: Image(image: AssetImage(TImages.productImage5))),
              ),
            ),
            //image slider
            Positioned(
              right: 0,
              bottom: 30,
              left: TSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: AlwaysScrollableScrollPhysics(),
                  itemCount: 6,
                  separatorBuilder: (_,__){
                    return SizedBox(width: TSizes.spaceBtwItems,);
                  },
                  itemBuilder: (_,index){
                    return RoundedEdgeImageContainer(
                      width: 80,
                      backgroundColor: dark ? myColors.dark :myColors.white,
                      border: Border.all(color: myColors.grey),
                      padding: EdgeInsets.all(TSizes.sm),
                      imageUrl: TImages.productImage5,
                    );
                  },
                ),
              ),
            ),
            CustomAppBar(
              showBackArrow: true,
              actions: [
                CircularIcon(icon: Iconsax.heart5,color: Colors.red,)
              ],
            )
          ],
        ),
      ),

    );
  }
}