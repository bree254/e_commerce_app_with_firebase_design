import 'package:e_commerce_firebase/utils/constants/colors.dart';
import 'package:e_commerce_firebase/utils/constants/enums.dart';
import 'package:e_commerce_firebase/utils/constants/image_strings.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/utils/helpers/helper_functions.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/icon_widgets/cart_counter_icon_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/container_widgets/container_with_rounded_border_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/image_widgets/circular_image_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/container_widgets/search_container_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/layout_widgets/grid_layout_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/text_widgets/brand_title_text_verified_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/text_widgets/section_heading.dart';
import 'package:e_commerce_firebase/widgets/custom_widgets/custom_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(
        title: Text(
            'Store',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          CartCounterIcon(
            onPressed: () {  },

          )
        ],

      ),
      body: NestedScrollView(
          headerSliverBuilder: (_,innerBoxIsScrolled){
            return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: THelperFunctions.isDarkMode(context)?myColors.black:myColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                  padding: EdgeInsets.all(TSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    SizedBox(height: TSizes.spaceBtwItems,),
                    SearchContainer(
                      text: 'Search in Store',
                      showBorder: true,
                      showBackground: false,
                      //padding:EdgeInsets.zero,

                    ),
                    SizedBox(height: TSizes.spaceBtwItems,),
                    SectionHeading(
                      title: 'Featured Brands',
                      showActionButton: true,
                      onPressed: (){},
                    ),
                    SizedBox(height: TSizes.spaceBtwItems/1.5,),
                    GridLayoutWidget(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_,index){
                          return    GestureDetector(
                            onTap: (){},
                            child: myRoundedContainerWidget(
                              padding: EdgeInsets.all(TSizes.sm),
                              showBorder: true,
                              borderColor: myColors.grey.withOpacity(0.8),
                              backgroundColor: Colors.transparent,
                              child: Row(
                                children: [
                                  Flexible(
                                    child: CircularImageWidget(
                                      image: TImages.clothIcon,
                                      isNetWorkImage: false,
                                      backgroundColor: Colors.transparent,
                                      overlayColor: THelperFunctions.isDarkMode(context)? myColors.white : myColors.black,
                                    
                                    ),
                                  ),
                                  SizedBox(width: TSizes.spaceBtwItems/2,),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        BrandTitleTextVerifiedWidget(
                                          title: 'Nike',
                                          brandTextSize: TextSizes.large,
                                        ),
                                        Text(
                                          '256 products vvvnggnngngn',
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(context).textTheme.labelMedium,
                                        )

                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),

                  ],
                ),
              ),


            ),
            ];
          },
          body: Container()),
    );
  }
}


