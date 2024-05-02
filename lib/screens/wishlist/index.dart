import 'package:e_commerce_firebase/controllers/home_controller.dart';
import 'package:e_commerce_firebase/screens/main_page/index.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/icon_widgets/circular_icon_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/layout_widgets/grid_layout_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/products/vertical_product_card_widget.dart';
import 'package:e_commerce_firebase/widgets/custom_widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
            'Wishlist',
          style:Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          CircularIcon(icon: Iconsax.add,onPressed: () => Get.to(MainPage()),),
      ]
    ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
            children: [
              GridLayoutWidget(
                  itemCount: 6,
                  itemBuilder: (_,index){
                    return VerticalProductCardWidget(

                    );
                  })
          ],
        ),),
      ),

    );
  }
}
