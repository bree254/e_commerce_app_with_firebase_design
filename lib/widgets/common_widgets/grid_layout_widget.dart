import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/vertical_product_card_width.dart';
import 'package:flutter/material.dart';
class GridLayoutWidget extends StatelessWidget {
  const GridLayoutWidget({
    super.key,
    required this.itemCount,
    this.mainAxisExtent =288,
    required this.itemBuilder,
  });
  final int itemCount;
  final double? mainAxisExtent;
  final Widget ? Function(BuildContext,int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      physics:NeverScrollableScrollPhysics() ,
      padding: EdgeInsets.zero,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: TSizes.gridViewSpacing,
        crossAxisSpacing: TSizes.gridViewSpacing,
        mainAxisExtent: mainAxisExtent,

      ),
      itemBuilder:itemBuilder,
    );
  }
}