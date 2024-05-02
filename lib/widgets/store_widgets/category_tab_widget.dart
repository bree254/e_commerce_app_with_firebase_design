import 'package:e_commerce_firebase/utils/constants/image_strings.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/layout_widgets/grid_layout_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/products/vertical_product_card_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/text_widgets/section_heading.dart';
import 'package:flutter/material.dart';

import 'brand_showcase_widget.dart';
class CategoryTabWidget extends StatelessWidget {
  const CategoryTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children:[
        Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            // brands
            const BrandShowCaseWidget(
              images: [
                TImages.productImage3,
                TImages.productImage2,
                TImages.productImage1,
              ],
            ),

            //products
            SectionHeading(
              title: 'You might like',
              onPressed: (){},
            ),
            const SizedBox(height: TSizes.spaceBtwItems,),
            GridLayoutWidget(

                itemCount: 4,
                itemBuilder: (_,index){
                  return const VerticalProductCardWidget();
                }
            ),
            const SizedBox(height: TSizes.spaceBtwSections,),


          ],
        ),
      ),]
    );
  }
}
