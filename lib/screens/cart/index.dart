import 'package:e_commerce_firebase/screens/checkout/index.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/cart_widgets/cart_list_widget.dart';
import 'package:e_commerce_firebase/widgets/custom_widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
      body: const Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
          child: CartListWidget(),
        ),
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
        child:ElevatedButton(
            onPressed: (){
              Get.to(() => const CheckoutScreen());

            },
            child: const Text('Checkout \$256.0')) ,
      ),

    );
  }
}

