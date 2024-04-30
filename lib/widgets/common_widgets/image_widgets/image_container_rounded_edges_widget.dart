import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class RoundedEdgeImageContainer extends StatelessWidget {
  const RoundedEdgeImageContainer({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.applyImageRadius =true,
    this.border,
    this.backgroundColor,
    this.fit = BoxFit.contain,
    this.padding,
    this.isNetworkImage = false,
    this.onPressed,
    this.borderRadius =TSizes.md,
  });
  final double ? width,height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder ? border;
  final Color? backgroundColor;
  final BoxFit fit;
  final EdgeInsetsGeometry ?padding;
  final bool isNetworkImage ;
  final VoidCallback ? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: backgroundColor,
        border: border,
      ),
      child: ClipRRect(
        borderRadius: applyImageRadius ?BorderRadius.circular(borderRadius):BorderRadius.zero,
        child: Image(
          fit: fit,
          image: isNetworkImage ? NetworkImage(imageUrl): AssetImage(imageUrl) as ImageProvider,
        ),
      ),

    );
  }
}
