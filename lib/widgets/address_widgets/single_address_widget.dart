import 'package:e_commerce_firebase/utils/constants/colors.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/utils/helpers/helper_functions.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/container_widgets/container_with_rounded_border_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class SingleAddressWidget extends StatelessWidget {
  const SingleAddressWidget({
    super.key,
    required this.selectedAddress});
  final bool selectedAddress ;

  @override
  Widget build(BuildContext context) {
    final dark =THelperFunctions.isDarkMode(context);
    return  RoundedContainerWidget(
      padding: EdgeInsets.all(TSizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress? myColors.primary.withOpacity(0.5): Colors.transparent,
      borderColor: selectedAddress ? Colors.transparent : dark ? myColors.darkerGrey : myColors.grey,
      margin: EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                ? dark
                  ? myColors.light
                  :myColors.dark.withOpacity(0.6)
                  :null
            
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'John Doe',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(
                height: TSizes.sm/2,
              ),
              Text(
                '+254759633729',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,

              ),
              SizedBox(
                height: TSizes.sm/2,
              ),
              Text(
                  '82356 Timmy Coves,South Liane,maine,87665,USA',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
                softWrap: true,
              ),
              SizedBox(
                height: TSizes.sm/2,
              )
            ],
          ),
        ],
      ),

    );
  }
}
