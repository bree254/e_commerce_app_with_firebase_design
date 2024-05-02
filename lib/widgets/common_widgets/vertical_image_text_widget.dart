import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_firebase/utils/constants/colors.dart';

class VerticalImageTextWidget extends StatelessWidget {
  const VerticalImageTextWidget({
    super.key,
    required this.image,
    required this.title,
    this.textColor = myColors.textwhite,
    this.backgroundColor = myColors.white,
    this.onTap,
  });
  final String image,title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(6),
            padding: const EdgeInsets.all(TSizes.sm),
            height: 56,
            width: 56,
            decoration: BoxDecoration(
              color: backgroundColor ?? (dark ? myColors.black:myColors.white),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.cover,
              color: dark? myColors.light: myColors.dark,
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwItems / 2,),
          SizedBox(
            width:56,
            child: Text(
              title,
              style: Theme.of(context).textTheme.labelMedium!.apply(color: myColors.white),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}