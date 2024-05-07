import 'package:e_commerce_firebase/utils/constants/enums.dart';
import 'package:e_commerce_firebase/utils/constants/image_strings.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/utils/helpers/helper_functions.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/container_widgets/container_with_rounded_border_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/image_widgets/circular_image_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/text_widgets/brand_title_text_verified_widget.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_firebase/utils/constants/colors.dart';

class BrandCardWidget extends StatelessWidget {
  const BrandCardWidget({
    super.key,
    this.onTap,
    required this.showBorder,

  });
  final void Function()? onTap;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: RoundedContainerWidget(
        padding: const EdgeInsets.all(TSizes.sm),
        showBorder: showBorder,
        borderColor: myColors.grey.withOpacity(0.8),
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            Flexible(
              child: CircularImageWidget(
                image: TImages.clothIcon,
                isNetWorkImage: false,
                backgroundColor: Colors.transparent,
                overlayColor: THelperFunctions.isDarkMode(context)? myColors.white : myColors.black,

              ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems/2,),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BrandTitleTextVerifiedWidget(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '256 products vvvnggnngngn',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}