import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/utils/helpers/helper_functions.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/container_widgets/container_with_rounded_border_widget.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_firebase/utils/constants/colors.dart';

class CouponWidget extends StatelessWidget {
  const CouponWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return RoundedContainerWidget(
      showBorder: true,
      borderColor: myColors.grey,
      backgroundColor: dark ? myColors.dark : myColors.white,
      padding: const EdgeInsets.only(
          top: TSizes.sm, bottom: TSizes.sm, left: TSizes.md),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: "Have promo code ? enter here",
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),

          //Button

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 80,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      foregroundColor: dark
                          ? myColors.white.withOpacity(0.5)
                          : myColors.dark.withOpacity(0.5),
                      backgroundColor: myColors.grey.withOpacity(0.5),
                      side: BorderSide(color: Colors.grey.withOpacity(0.1))),
                  child: const Text('Apply')),
            ),
          )
        ],
      ),
    );
  }
}
