import 'package:e_commerce_firebase/utils/constants/image_strings.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/image_widgets/image_container_rounded_edges_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/products/horizontal_product_card_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/text_widgets/section_heading.dart';
import 'package:e_commerce_firebase/widgets/custom_widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text('Sports'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Banner
              RoundedEdgeImageContainer(
                width: double.infinity,
                  imageUrl: TImages.promoBanner3,
                applyImageRadius: true,
              ),

              //sub-categories
              Column(
                children: [
                  //Heading
                  SectionHeading(
                      title: 'Sports Shirts',
                    onPressed: (){},
                  ),
                  SizedBox(height: TSizes.spaceBtwItems /2 ,),

                   HorizontalProductCardWidget(),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
