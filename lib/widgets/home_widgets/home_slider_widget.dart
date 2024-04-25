import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_firebase/controllers/home_controller.dart';
import 'package:e_commerce_firebase/utils/constants/image_strings.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/circular_container_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/image_container_rounded_widget.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_firebase/utils/constants/colors.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomeSliderWidget extends StatelessWidget {
   HomeSliderWidget({
    super.key,
     required this.banners,
  });
  final HomeController _controller = Get.put(HomeController());

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            onPageChanged: (index,_) {
              _controller.updatePageIndicator(index);
            },
            viewportFraction: 1,
          ),
          items: banners.map((url) => RoundedEdgeImageContainer(imageUrl: url, backgroundColor: myColors.light)).toList(),
        ),
        SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Center(
          child: Obx(() => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for(int i=0;i<banners.length;i++)
                CircularContainer(
                  width: 20,
                  height: 4,
                  margin: EdgeInsets.only(right: 10),
                  backgroundColor: _controller.carouselCurrentindex.value == i ?myColors.primary :myColors.grey,
                ),
            ],
          )),
        )
      ],
    );
  }
}