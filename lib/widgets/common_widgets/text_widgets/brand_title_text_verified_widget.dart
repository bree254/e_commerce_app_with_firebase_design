import 'package:e_commerce_firebase/utils/constants/enums.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/text_widgets/brand_title_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:e_commerce_firebase/utils/constants/colors.dart';

class BrandTitleTextVerifiedWidget extends StatelessWidget {
  const BrandTitleTextVerifiedWidget({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
    this.textColor,
    this.iconColor =myColors.primary,
  });
  final Color? textColor,iconColor;
  final String title;
  final int maxLines;
  final TextAlign ?textAlign;
  final TextSizes brandTextSize;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: BrandTitleText(
            maxLines: 1,
            title: title,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
          ),
        ),
        const SizedBox(width: TSizes.xs,),
        Icon(
          Iconsax.verify5,
          color: iconColor,
          size: TSizes.iconXs,
        ),
      ],
    );
  }
}