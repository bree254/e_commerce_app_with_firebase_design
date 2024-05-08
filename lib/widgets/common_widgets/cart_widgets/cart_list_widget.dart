import 'package:e_commerce_firebase/widgets/common_widgets/products/product_price__text_widget.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/cart_widgets/cart_item_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/cart_widgets/product_quantity_with_add_remove_button_widget.dart';

class CartListWidget extends StatelessWidget {
  const CartListWidget({
    super.key,
    this.showAddRemovedButtons = true,
  });

  final bool showAddRemovedButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 4,
      shrinkWrap: true,
      separatorBuilder: (_, __){
        return const SizedBox(
          height: TSizes.defaultSpace,
        );
      },
      itemBuilder: (_,index){
        return Column(
          children: [
            const CartItemWidget(),

            if(showAddRemovedButtons)
            const SizedBox(height: TSizes.spaceBtwItems,),

            if(showAddRemovedButtons)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 70,),

                    //add remove buttons

                    ProductQuantityAddRemoveWidget(),
                  ],
                ),
                ProductPriceTextWidget(price: '256')

              ],
            )
          ],
        );
      },
    );
  }
}
