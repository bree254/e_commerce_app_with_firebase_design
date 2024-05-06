import 'package:e_commerce_firebase/utils/constants/colors.dart';
import 'package:e_commerce_firebase/utils/constants/image_strings.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/utils/helpers/helper_functions.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/icon_widgets/circular_icon_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/image_widgets/image_container_rounded_edges_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/products/product_attributes_widgets.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/products/product_detail_image_slider_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/products/product_meta_data_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/products/ratings_share_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/text_widgets/section_heading.dart';
import 'package:e_commerce_firebase/widgets/custom_widgets/curved_edges_widget.dart';
import 'package:e_commerce_firebase/widgets/custom_widgets/custom_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: SingleChildScrollView(

        child: Column(
          children: [
            //product image slider
            ProductDetailImageSliderWidget(),
            
            //product details
            Padding(
                padding: EdgeInsets.only(right: TSizes.defaultSpace,left: TSizes.defaultSpace,bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  //Rating
                  RatingsnShareWidget(),

                  //Price,Title,Stock & Brand
                  ProductMetaDataWidget(),
                  SizedBox(height: TSizes.spaceBtwSections,),
                  //Attributes
                  ProductAttributesScreen(),
                  SizedBox(height: TSizes.spaceBtwSections,),

                  //Checkout Buttton
                  SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: Text('Checkout'))),
                  //Description
                  SectionHeading(title: 'Description',showActionButton: false,),
                  SizedBox(height: TSizes.spaceBtwItems,),
                  ReadMoreText(
                      'This is a product description for blue nike sleeve vest.There are things that can be added but i ',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "Show more",
                    trimExpandedText: 'less',
                    moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                    lessStyle:  TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                  ),

                  //Reviews
                  Divider(),
                  SizedBox(height: TSizes.spaceBtwSections,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SectionHeading(title: 'Reviews (199)',showActionButton: true,),
                      IconButton(onPressed: (){}, icon: Icon(Iconsax.arrow_right_3,size: 18,),),
                    ],
                  ),
                  SizedBox(height: TSizes.spaceBtwSections,),
                  

                ],


              ),
            )
          ],
        ),
      ),

    );
  }
}



