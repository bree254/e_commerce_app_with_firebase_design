import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_firebase/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';

class CircularIcon extends StatelessWidget {
  const CircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = TSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,


  });
  final double ?width,height,size;
  final IconData icon;
  final Color ?color;
  final Color ? backgroundColor;
  final VoidCallback? onPressed;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
       color: backgroundColor != null
           ? backgroundColor!
           :THelperFunctions.isDarkMode(context)
          ? myColors.black.withOpacity(0.9)
          : myColors.white.withOpacity(0.9),

      ),
      child: IconButton(
          onPressed: (){},
          icon: Icon(Iconsax.heart5,color: color,size: size,)),
    );
  }
}