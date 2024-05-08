import 'package:e_commerce_firebase/screens/reviews/index.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/products/bottom_add_to_cart_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/products/product_attributes_widgets.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/products/product_detail_image_slider_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/products/product_meta_data_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/products/ratings_share_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/text_widgets/section_heading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
 import 'package:readmore/readmore.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      bottomNavigationBar: const BottomAddToCartWidget(),
      body: SingleChildScrollView(

        child: Column(
          children: [
            //product image slider
            const ProductDetailImageSliderWidget(),
            
            //product details
            Padding(
                padding: const EdgeInsets.only(right: TSizes.defaultSpace,left: TSizes.defaultSpace,bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  //Rating
                  const RatingsnShareWidget(),

                  //Price,Title,Stock & Brand
                  const ProductMetaDataWidget(),
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  //Attributes
                  const ProductAttributesScreen(),
                  const SizedBox(height: TSizes.spaceBtwSections,),

                  //Checkout Buttton
                  SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text('Checkout'))),
                  //Description
                  const SectionHeading(title: 'Description',showActionButton: false,),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  const ReadMoreText(
                      'This is a product description for blue nike sleeve vest.There are things that can be added but kdknafknkkknkk kkfkknkdKKFK nJNVNJ vjjsjj ',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "Show more",
                    trimExpandedText: 'less',
                    moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                    lessStyle:  TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                  ),

                  //Reviews
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SectionHeading(title: 'Reviews (199)',showActionButton: true,),
                      IconButton(
                        onPressed: (){
                          Get.to(() => const ProductReviewScreen());
                        },
                        icon: const Icon(Iconsax.arrow_right_3,
                          size: 18,
                        ),),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  

                ],


              ),
            )
          ],
        ),
      ),

    );
  }
}



