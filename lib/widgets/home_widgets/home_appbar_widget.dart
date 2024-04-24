import 'package:e_commerce_firebase/utils/constants/text_strings.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/cart_counter_icon_widget.dart';
import 'package:e_commerce_firebase/widgets/custom_widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_firebase/utils/constants/colors.dart';

class HomeAppbarWidget extends StatelessWidget {
  const HomeAppbarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(TTexts.homeAppbarTitle,style: Theme.of(context).textTheme.labelMedium!.apply(color:myColors.grey),),
          Text(TTexts.homeAppbarSubTitle,style: Theme.of(context).textTheme.headlineSmall!.apply(color:myColors.white),),
        ],
      ),
      actions: [
        CartCounterIcon(onPressed: () {  }, iconColor: myColors.white,),
      ],
    );
  }
}