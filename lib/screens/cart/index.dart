import 'package:e_commerce_firebase/screens/checkout/index.dart';
import 'package:e_commerce_firebase/utils/constants/colors.dart';
import 'package:e_commerce_firebase/utils/constants/image_strings.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/utils/helpers/helper_functions.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/cart_widgets/cart_item_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/cart_widgets/cart_list_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/cart_widgets/product_quantity_with_add_remove_button_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/icon_widgets/circular_icon_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/image_widgets/image_container_rounded_edges_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/products/product_price__text_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/products/product_tile_text.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/text_widgets/brand_title_text_verified_widget.dart';
import 'package:e_commerce_firebase/widgets/custom_widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
          child: CartListWidget(),
        ),
      bottomNavigationBar: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
        child:ElevatedButton(
            onPressed: (){
              Get.to(() => CheckoutScreen());

            },
            child: Text('Checkout \$256.0')) ,
      ),

    );
  }
}

