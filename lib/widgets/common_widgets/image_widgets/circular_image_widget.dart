import 'package:e_commerce_firebase/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_firebase/utils/constants/colors.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';

class CircularImageWidget extends StatelessWidget {
  const CircularImageWidget({
    super.key,
    this.fit = BoxFit.cover,
    required this.image,
    this.isNetWorkImage = false,
    this.overlayColor,
    this.backgroundColor,
    this.width = 56,
    this.height =56,
    this.padding =TSizes.sm,
  });

  final BoxFit ? fit;
  final String image;
  final bool isNetWorkImage;
  final Color ? overlayColor;
  final Color ? backgroundColor;
  final double width,height,padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: THelperFunctions.isDarkMode(context)?myColors.black : myColors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        fit: fit,
        image: isNetWorkImage? NetworkImage(image) : AssetImage(image) as ImageProvider,
        color: overlayColor,
      ),
    );
  }
}