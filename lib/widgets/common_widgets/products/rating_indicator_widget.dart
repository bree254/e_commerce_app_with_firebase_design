import 'package:flutter/material.dart';
import 'package:e_commerce_firebase/utils/constants/colors.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class RatingIndicatorWidget extends StatelessWidget {
  const RatingIndicatorWidget({
    super.key,
    required this.rating,
  });
  final double rating;

  @override
  Widget build(BuildContext context) {
    return
      RatingBarIndicator(
        rating:rating,
        itemSize: 20,
        unratedColor: myColors.grey,
        itemBuilder: (_,__){
          return Icon(Iconsax.star1,color: myColors.primary,);

        }
    );
  }
}