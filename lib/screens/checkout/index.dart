import 'package:e_commerce_firebase/screens/main_page/index.dart';
import 'package:e_commerce_firebase/screens/success/index.dart';
import 'package:e_commerce_firebase/utils/constants/colors.dart';
import 'package:e_commerce_firebase/utils/constants/image_strings.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/cart_widgets/cart_list_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/checkout_widgets/billing_address_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/checkout_widgets/billing_amount_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/checkout_widgets/billing_payment_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/checkout_widgets/coupon_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/container_widgets/container_with_rounded_border_widget.dart';
import 'package:e_commerce_firebase/widgets/custom_widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// items in cart
              ///
              CartListWidget(
                showAddRemovedButtons: false,
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //Coupon textfield
              CouponWidget(),

              SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              RoundedContainerWidget(
                showBorder: true,
                borderColor: myColors.grey,
                padding: EdgeInsets.all(TSizes.md),
                child: Column(
                  children: [
                    //Pricing
                    BillingAmountWidget(),
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),

                    //Divider
                    Divider(),
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    //Payment methods
                    BillingPaymentWidget(),
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    //Address
                    BillingAddressWidget()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () {
              Get.to(() =>  SuccessScreen(
                  image: TImages.successfulPaymentIcon,
                  title: 'payment success',
                  subTitle: 'Your Item will be shipped soon',
                  onPressed: (){
                    Get.offAll(() => MainPage());
                  }
              ));
            },
            child: const Text('Checkout \$256.0')),
      ),
    );
  }
}
