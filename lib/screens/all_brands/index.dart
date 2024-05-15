import 'package:e_commerce_firebase/screens/brand_products/index.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/layout_widgets/grid_layout_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/products/all_sortable_products_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/text_widgets/section_heading.dart';
import 'package:e_commerce_firebase/widgets/custom_widgets/custom_appbar.dart';
import 'package:e_commerce_firebase/widgets/store_widgets/brand_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ViewAllBrandsScreen extends StatelessWidget {
  const ViewAllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text('Brand'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //heading
              SectionHeading(title: 'Brands',showActionButton: false,),
              SizedBox(height: TSizes.spaceBtwItems,),

              //brands
              GridLayoutWidget(
                  itemCount: 18,
                  mainAxisExtent:88,
                  itemBuilder: (context,index){
                    return BrandCardWidget(
                        showBorder: true,
                      onTap: (){
                          Get.to(() => BrandProducts());
                      },
                    );
                  }
              )
            ],
          ),
        ),
      ),
    );
  }
}
