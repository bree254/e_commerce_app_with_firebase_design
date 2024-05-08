import 'package:e_commerce_firebase/utils/constants/colors.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/utils/helpers/helper_functions.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/container_widgets/container_with_rounded_border_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class OrderListWidget extends StatelessWidget {
  const OrderListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return ListView.separated(
      itemCount: 10,
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: TSizes.spaceBtwItems,);
      },
      itemBuilder: (BuildContext context, int index) {
        return  RoundedContainerWidget(
          showBorder: true,
          borderColor: Colors.grey,
          backgroundColor: dark ? myColors.dark : myColors.light ,
          padding: const EdgeInsets.all(TSizes.md),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Row 1
              Row(
                children: [
                  // 1 - icon
                  const Icon(Iconsax.ship),
                  const SizedBox(width: TSizes.spaceBtwItems/2,),

                  // 2 - status and date
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Processing',
                          style: Theme.of(context).textTheme.bodyLarge!.apply(color: myColors.primary,fontWeightDelta: 1),
                        ),
                        Text(
                          '07 Nov 2024',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ],
                    ),
                  ),

                  //   3 -Icon
                  IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right_34,size: TSizes.iconSm,)),

                ],
              ),
              const SizedBox(height: TSizes.spaceBtwItems,),

              // Row 2
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        // 1 - icon
                        const Icon(Iconsax.tag),
                        const SizedBox(width: TSizes.spaceBtwItems/2,),

                        // 2 - status and date
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Order',
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                              Text(
                                '[#1226478]',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        // 1 - icon
                        const Icon(Iconsax.calendar),
                        const SizedBox(width: TSizes.spaceBtwItems/2,),

                        // 2 - status and date
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Shipping date',
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                              Text(
                                '07 Feb 2025',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },



    );
  }
}
