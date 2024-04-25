import 'package:flutter/material.dart';
import 'package:e_commerce_firebase/utils/constants/colors.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
    this.width = 400,
    this.height =400,
    this.radius =400,
    this.padding =0,
    this.child,
    this.backgroundColor  = myColors.textwhite,
    this.margin,
  });
  final double ? width;
  final double ? height;
  final double ? radius;
  final double ? padding;
  final Widget ? child;
  final Color backgroundColor;
  final EdgeInsets ? margin;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding!),
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius!),
        color:backgroundColor,
      ),
      child: child,
    );
  }
}