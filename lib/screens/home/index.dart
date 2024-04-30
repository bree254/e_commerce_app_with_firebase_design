import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_firebase/utils/constants/colors.dart';
import 'package:e_commerce_firebase/utils/constants/image_strings.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/utils/constants/text_strings.dart';
import 'package:e_commerce_firebase/utils/device/device_utility.dart';
import 'package:e_commerce_firebase/utils/helpers/helper_functions.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/container_widgets/search_container_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/layout_widgets/grid_layout_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/image_widgets/image_container_rounded_edges_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/icon_widgets/cart_counter_icon_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/products/vertical_product_card_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/text_widgets/section_heading.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/vertical_image_text_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/container_widgets/circular_container_widget.dart';
import 'package:e_commerce_firebase/widgets/custom_widgets/curved_edges.dart';
import 'package:e_commerce_firebase/widgets/custom_widgets/curved_edges_widget.dart';
import 'package:e_commerce_firebase/widgets/custom_widgets/custom_appbar.dart';
import 'package:e_commerce_firebase/widgets/home_widgets/home_appbar_widget.dart';
import 'package:e_commerce_firebase/widgets/home_widgets/home_categories_widget.dart';
import 'package:e_commerce_firebase/widgets/home_widgets/home_slider_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:e_commerce_firebase/widgets/home_widgets/home_header_widget.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            HomePrimaryHeaderContainer(
              child: Column(
                children: [
                  HomeAppbarWidget(),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  SearchContainer(
                    text: 'Search in Store',
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        SectionHeading(
                          showActionButton: false,
                          title: 'Popular Categories',
                          textColor: myColors.white,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        HomeCategoriesWidget(),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child:
              Column(
                children: [
                  HomeSliderWidget(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                    ],
                  ),
                  SizedBox(height: TSizes.spaceBtwSections,),
                  GridLayoutWidget(
                    itemCount: 6,
                    itemBuilder: (BuildContext , int ) { return VerticalProductCardWidget(); },),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}




