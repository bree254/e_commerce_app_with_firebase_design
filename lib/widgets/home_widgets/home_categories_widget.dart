import 'package:e_commerce_firebase/utils/constants/image_strings.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/vertical_image_text_widget.dart';
import 'package:flutter/material.dart';
class HomeCategoriesWidget extends StatelessWidget {
  const HomeCategoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: 6,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return const VerticalImageTextWidget(
            image:TImages.shoeIcon,
            title:'shoes category',
          );

        },

      ),
    );
  }
}
