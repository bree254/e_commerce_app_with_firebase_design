import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/utils/helpers/helper_functions.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/container_widgets/container_with_rounded_border_widget.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_firebase/utils/constants/colors.dart';
import 'brand_card_widget.dart';
class BrandShowCaseWidget extends StatelessWidget {
  const BrandShowCaseWidget({
    super.key,
    required this.images,
  });
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return myRoundedContainerWidget(
      showBorder: true,
      borderColor: myColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      padding: const EdgeInsets.all(TSizes.sm),
      child: Column(
        children: [
          const BrandCardWidget(showBorder: false),
          Row(
            children: images.map((image) => brandTopProductImageWidget(image, context)).toList()
          )
        ],
      ),
    );
  }
  Widget brandTopProductImageWidget(String image,context){
    return Expanded(
      child: myRoundedContainerWidget(
        height: 100,
        backgroundColor: THelperFunctions.isDarkMode(context) ?myColors.darkerGrey:myColors.light,
        margin: const EdgeInsets.only(right: TSizes.sm),
        padding: const EdgeInsets.all(TSizes.md),
        child: Image(image: AssetImage(image)),
      ),
    );
  }
}