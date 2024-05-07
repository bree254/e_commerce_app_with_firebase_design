import 'package:e_commerce_firebase/utils/constants/colors.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/products/overall_product_rating_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/products/rating_indicator_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/products/ratings_progress_indicator.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/review_widgets/user_review_card_widget.dart';
import 'package:e_commerce_firebase/widgets/custom_widgets/custom_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,

      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Ratings and reviews are verified and are from people who use the same type of device that you use.'),
              SizedBox(height: TSizes.spaceBtwItems,),

              //Overall Product ratings
              OverallProductRatingWidget(),
              RatingIndicatorWidget(rating: 3.5,),
              Text('12,611',style: Theme.of(context).textTheme.bodySmall,),
              SizedBox(height: TSizes.spaceBtwSections,),

              //Users Review List
              UserReviewCard(),
              UserReviewCard(),
              UserReviewCard(),
            ],
          ),
        ),

      ),
    );
  }
}



