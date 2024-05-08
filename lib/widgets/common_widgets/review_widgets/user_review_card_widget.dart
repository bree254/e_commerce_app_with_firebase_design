import 'package:e_commerce_firebase/utils/constants/colors.dart';
import 'package:e_commerce_firebase/utils/constants/image_strings.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/utils/helpers/helper_functions.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/container_widgets/container_with_rounded_border_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/products/rating_indicator_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
 import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return  Column(
      children: [
        Row(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(TImages.userProfileImage1),
                ),
                SizedBox(width: TSizes.spaceBtwItems,),
                Text('john doe ',style: Theme.of(context).textTheme.titleLarge,),
              ],
            ),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
          ],
        ),
        SizedBox(width: TSizes.spaceBtwItems,),
        Row(
          children: [
            // RatingIndicatorWidget(rating: 4.5),
            SizedBox(width: TSizes.spaceBtwItems,),
            Text('01-Nov-2023',style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        SizedBox(width: TSizes.spaceBtwItems,),

        ReadMoreText(
            'sjknk kdklkm n kn knl njnKKM nmmkkmk nm kkkm,vxnkn k mmzm,k kkkkkkk afsghj ewrtyzvb adfghj wertyu cvbn jhk xcvbn rghj ertyui fgh lkhgf mnbvc utre jhgfd mnvc pouyt',
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'Show More',
          trimExpandedText:'Show Less' ,
          moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: myColors.primary),
          lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: myColors.primary),
            ),
        SizedBox(width: TSizes.spaceBtwItems,),

        RoundedContainerWidget(
          backgroundColor: dark ? myColors.darkerGrey : myColors.grey,
          padding: EdgeInsets.all(TSizes.md),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Magnolia Store',style: Theme.of(context).textTheme.titleMedium,),
                  Text('02-Nov-2023',style: Theme.of(context).textTheme.bodyMedium,),

                ],
              ),
              SizedBox(width: TSizes.spaceBtwItems,),

              ReadMoreText(
                  'sjknk kdklkm n kn knl njnKKM nmmkkmk nm kkkm,vxnkn k mmzm,k kkkkkkk afsghj ewrtyzvb adfghj wertyu cvbn jhk xcvbn rghj ertyui fgh lkhgf mnbvc utre jhgfd mnvc pouyt',
                  trimLines: 1,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show More',
                  trimExpandedText:'Show Less' ,
                  moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: myColors.primary),
                  lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: myColors.primary),
              ),
            ],
          ),
        ),
        SizedBox(width: TSizes.spaceBtwSections,),
      ],
    );
  }
}