import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/products/overall_product_rating_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/products/rating_indicator_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/review_widgets/user_review_card_widget.dart';
import 'package:e_commerce_firebase/widgets/custom_widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,

      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Ratings and reviews are verified and are from people who use the same type of device that you use.'),
              const SizedBox(height: TSizes.spaceBtwItems,),

              //Overall Product ratings
              const OverallProductRatingWidget(),
              const RatingIndicatorWidget(rating: 3.5,),
              Text('12,611',style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              //Users Review List
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),

      ),
    );
  }
}



