import 'package:e_commerce_firebase/utils/constants/colors.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
class myRoundedContainerWidget extends StatelessWidget {
  const myRoundedContainerWidget({
    super.key,
    this.width,
    this.height,
    this.radius = TSizes.cardRadiusLg,
    this.child,
    this.showBorder = false,
    this.borderColor = myColors.primary,
    this.backgroundColor = myColors.white,
    this.padding,
    this.margin
  });

  final double?width;
  final double?height;
  final double radius;
  final Widget?child;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry ?padding;
  final EdgeInsetsGeometry?margin;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ?Border.all(color: borderColor):null,
      ),
      child: child,
    );
  }
}