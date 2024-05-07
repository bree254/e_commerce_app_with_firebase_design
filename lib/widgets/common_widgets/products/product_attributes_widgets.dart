import 'package:e_commerce_firebase/utils/constants/colors.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/utils/helpers/helper_functions.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/container_widgets/container_with_rounded_border_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/products/product_price__text_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/products/product_tile_text.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/text_widgets/section_heading.dart';
import 'package:flutter/material.dart';

import 'choice_chip_widget.dart';
class ProductAttributesScreen extends StatelessWidget {
  const ProductAttributesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark =THelperFunctions.isDarkMode(context);
    return  Column(
      children: [
        // Selected Attribute pricing and description
        RoundedContainerWidget(
          padding: EdgeInsets.all(TSizes.sm),
          backgroundColor: dark ? myColors.darkerGrey :myColors.grey,
          child: Column(
            children: [
              //Title ,Price and Stock Status
              Row(
                children: [
                  SectionHeading(title: 'Variation',showActionButton: false,),
                  SizedBox(width: TSizes.spaceBtwItems,),
                  
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Row(
                        children: [
                          //Actual prize
                          ProductTileText(title: 'Price : ',smallsize: true,),
                          Text(
                              '\$25',
                            style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
                          ),
                          SizedBox(width: TSizes.spaceBtwItems,),

                          //Sale Price
                          ProductPriceTextWidget(
                              price: '20')
                          //sale price
                        ],
                      ),
                      //Stock
                      Row(
                        children: [
                       ProductTileText(title: 'Stock : ',smallsize: true,),
                          Text('In Stock',style: Theme.of(context).textTheme.titleMedium,)
                        ],
                      ),

                    ],
                  )
                ],
              ),
              //Variation Description
              ProductTileText(
                title: 'This is the Description of the product and it can go up to max 4 lines',
                smallsize: true,
                maxLines: 4,
              )
            ],
          ),
        ),
        SizedBox(height: TSizes.spaceBtwItems,),

        //Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionHeading(title: 'Colors',showActionButton: false,),
            SizedBox(height: TSizes.spaceBtwItems/2,),
            Wrap(
              spacing: 8,
              children: [
                ChoiceChipWidget(text: 'Green', selected: true,onSelected: (value){},),
                ChoiceChipWidget(text: 'Blue', selected: false,onSelected: (value){},),
                ChoiceChipWidget(text: 'Yellow', selected: false,onSelected: (value){},),
              ],
            )



          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionHeading(title: 'Size',showActionButton: false,),
            SizedBox(height: TSizes.spaceBtwItems/2,),
            Wrap(
              spacing: 8,
              children: [

                ChoiceChipWidget(text: 'EU 34', selected: true,onSelected: (value){},),
                ChoiceChipWidget(text: 'EU 36', selected: false,onSelected: (value){},),
                ChoiceChipWidget(text: 'Eu 38', selected: false,onSelected: (value){},),
              ],
            )


          ],
        ),
      ],

    );
  }
}

