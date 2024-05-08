import 'package:e_commerce_firebase/utils/constants/colors.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/utils/helpers/helper_functions.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/cart_widgets/cart_list_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/container_widgets/container_with_rounded_border_widget.dart';
import 'package:e_commerce_firebase/widgets/custom_widgets/custom_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// items in cart
              ///
              CartListWidget(
                showAddRemovedButtons: false,
              ),
              SizedBox(height: TSizes.spaceBtwSections,),

              //Coupon textfield
              RoundedContainerWidget(
                showBorder: true,
                backgroundColor: dark? myColors.dark : myColors.white,
                padding: EdgeInsets.only(top: TSizes.sm,bottom: TSizes.sm,left: TSizes.md),
                child: Row(
                  children: [
                    Flexible(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Have promo code ? enter here",
                        ),
                      ),
                    )
                  ],
                ),

              ),
              SizedBox(height: TSizes.spaceBtwSections,),


            ],
          ),
        ),
      ),
    );
  }
}
