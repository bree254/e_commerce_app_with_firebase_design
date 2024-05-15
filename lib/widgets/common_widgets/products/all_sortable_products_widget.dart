import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/layout_widgets/grid_layout_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/products/vertical_product_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class SortableProductsWidget extends StatelessWidget {
  const SortableProductsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // DropDown
        DropdownButtonFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.sort),
          ),
            items: [
              'Name','Higher Price','Lower Price','Sale','Newest','Popularity'
            ].map((option) => DropdownMenuItem(value:option,child: Text(option))).toList(),
            onChanged: (value){

            }),
        SizedBox(height: TSizes.spaceBtwSections,),

        GridLayoutWidget(itemCount: 8, itemBuilder: (_,index){
          return VerticalProductCardWidget();
        })
      ],
    );
  }
}
