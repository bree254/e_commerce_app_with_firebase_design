import 'package:e_commerce_firebase/screens/all_brands/index.dart';
import 'package:e_commerce_firebase/utils/constants/colors.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/utils/helpers/helper_functions.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/icon_widgets/cart_counter_icon_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/container_widgets/search_container_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/layout_widgets/grid_layout_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/text_widgets/section_heading.dart';
import 'package:e_commerce_firebase/widgets/custom_widgets/custom_appbar.dart';
import 'package:e_commerce_firebase/widgets/custom_widgets/custom_tabbar.dart';
import 'package:e_commerce_firebase/widgets/store_widgets/brand_card_widget.dart';
import 'package:e_commerce_firebase/widgets/store_widgets/category_tab_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 5,
      child: Scaffold(
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
                    padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(height: TSizes.spaceBtwItems,),
                      const SearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackground: false,
                        //padding:EdgeInsets.zero,

                      ),
                      const SizedBox(height: TSizes.spaceBtwItems,),
                      SectionHeading(
                        title: 'Featured Brands',
                        showActionButton: true,
                        onPressed: (){
                          Get.to(() => ViewAllBrandsScreen());
                        },
                      ),
                      const SizedBox(height: TSizes.spaceBtwItems/1.5,),
                      GridLayoutWidget(
                          itemCount: 4,
                          mainAxisExtent: 80,
                          itemBuilder: (_,index){
                            return BrandCardWidget(
                              showBorder: true,
                              onTap: (){},
                            );
                          })
                    ],
                  ),
                ),
                bottom: const CustomTabbar(
                    tabs: [
                      Tab(child: Text('Sports'),),
                      Tab(child: Text('Furniture'),),
                      Tab(child: Text('Electronics'),),
                      Tab(child: Text('Clothes'),),
                      Tab(child: Text('Cosmetics'),),
                ]),


              ),
              ];
            },
          body: const TabBarView(
              children: [
                CategoryTabWidget(),
                CategoryTabWidget(),
                CategoryTabWidget(),
                CategoryTabWidget(),
                CategoryTabWidget(),



              ]),
        ),
      ),
    );
  }
}





