import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/layout_widgets/grid_layout_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/products/vertical_product_card_widget.dart';
import 'package:e_commerce_firebase/widgets/custom_widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class ViewAllProductsScreen extends StatelessWidget {
  const ViewAllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(
        title: Text('Popular Products',),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Dropdown
              DropdownButtonFormField(
                onChanged: (value){},
                decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
                  items: ['Name','Higher Price','Lower Price','Sale','Newest','Popularity',]
                      .map((option) => DropdownMenuItem(value:option,child: Text(option))).
                  toList(),
              ),
              SizedBox(height: TSizes.spaceBtwSections,),
              GridLayoutWidget(itemCount: 8, itemBuilder: (_,index){
                return VerticalProductCardWidget();
              })
            ],
          ),
        ),
      ),
    );
  }
}
