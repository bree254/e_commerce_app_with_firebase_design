import 'package:e_commerce_firebase/utils/constants/colors.dart';
import 'package:e_commerce_firebase/utils/constants/image_strings.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/utils/constants/text_strings.dart';
import 'package:e_commerce_firebase/utils/device/device_utility.dart';
import 'package:e_commerce_firebase/utils/helpers/helper_functions.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/section_heading.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/cart_counter_icon_widget.dart';
import 'package:e_commerce_firebase/widgets/custom_widgets/circular_container_widget.dart';
import 'package:e_commerce_firebase/widgets/custom_widgets/curved_edges.dart';
import 'package:e_commerce_firebase/widgets/custom_widgets/curved_edges_widget.dart';
import 'package:e_commerce_firebase/widgets/custom_widgets/custom_appbar.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/search_container_widget.dart';
import 'package:e_commerce_firebase/widgets/home_widgets/home_appbar_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:e_commerce_firebase/widgets/home_widgets/home_header_widget.dart';
import 'package:iconsax/iconsax.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomePrimaryHeaderContainer(
              child: Column(
                children: [
                  HomeAppbarWidget(),

                  SizedBox(height: TSizes.spaceBtwSections,),

                  SearchContainer(text: 'Search in Store',),

                  SizedBox(height: TSizes.spaceBtwSections,),

                  Padding(
                      padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(

                      children: [
                        SectionHeading(showActionButton: false, title: 'Popular Categories',textColor: myColors.white,),
                        SizedBox(height: TSizes.spaceBtwItems,),
                        SizedBox(
                          height: 80,
                            child: ListView.builder(
                              itemCount: 6,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  children: [
                                    Container(
                                      height: 56,
                                      width: 56,
                                      decoration: BoxDecoration(
                                        color: myColors.white,
                                        borderRadius: BorderRadius.circular(100),
                                      ),
                                      child: Image(
                                          image: AssetImage(TImages.shoeIcon),
                                        fit: BoxFit.cover,
                                        color: myColors.dark,
                                      ),
                                    ),
                                  ],
                                );

                              },

                            ))

                      ],
                    ),
                  )

                ],

              ),

            ),
          ],
        ),

      ),

    );
  }
}




