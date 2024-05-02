import 'package:e_commerce_firebase/utils/constants/colors.dart';
import 'package:e_commerce_firebase/utils/constants/image_strings.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/container_widgets/search_container_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/layout_widgets/grid_layout_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/products/vertical_product_card_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/text_widgets/section_heading.dart';
import 'package:e_commerce_firebase/widgets/home_widgets/home_appbar_widget.dart';
import 'package:e_commerce_firebase/widgets/home_widgets/home_categories_widget.dart';
import 'package:e_commerce_firebase/widgets/home_widgets/home_slider_widget.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_firebase/widgets/home_widgets/home_header_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const HomePrimaryHeaderContainer(
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
                    banners: const [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  GridLayoutWidget(
                    itemCount: 6,
                    itemBuilder: (BuildContext , int ) { return const VerticalProductCardWidget(); },),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}




