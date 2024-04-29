import 'package:e_commerce_firebase/utils/constants/colors.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/utils/helpers/helper_functions.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/cart_counter_icon_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/search_container_widget.dart';
import 'package:e_commerce_firebase/widgets/custom_widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(
        title: Text(
            'Store',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          CartCounterIcon(
            onPressed: () {  },

          )
        ],

      ),
      body: NestedScrollView(
          headerSliverBuilder: (_,innerBoxIsScrolled){
            return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: THelperFunctions.isDarkMode(context)?myColors.black:myColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                  padding: EdgeInsets.all(TSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    SizedBox(height: TSizes.spaceBtwItems,),
                    SearchContainer(
                      text: 'Search in Store',
                      showBorder: true,
                      showBackground: false,
                      //padding:EdgeInsets.zero,

                    ),
                    SizedBox(height: TSizes.spaceBtwItems,),
                  ],
                ),
              ),


            ),
            ];
          },
          body: Container()),
    );
  }
}
