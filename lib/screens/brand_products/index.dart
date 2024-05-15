import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/products/all_sortable_products_widget.dart';
import 'package:e_commerce_firebase/widgets/custom_widgets/custom_appbar.dart';
import 'package:e_commerce_firebase/widgets/store_widgets/brand_card_widget.dart';
import 'package:flutter/material.dart';
class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text('Nike'),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              BrandCardWidget(showBorder: true),
              SizedBox(height: TSizes.spaceBtwSections,),

              SortableProductsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
