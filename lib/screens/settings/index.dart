import 'package:e_commerce_firebase/screens/profile/index.dart';
import 'package:e_commerce_firebase/utils/constants/colors.dart';
import 'package:e_commerce_firebase/utils/constants/image_strings.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/image_widgets/circular_image_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/text_widgets/section_heading.dart';
import 'package:e_commerce_firebase/widgets/custom_widgets/custom_appbar.dart';
import 'package:e_commerce_firebase/widgets/home_widgets/home_header_widget.dart';
import 'package:e_commerce_firebase/widgets/settings_widget/settings_menu_tile_widget.dart';
import 'package:e_commerce_firebase/widgets/settings_widget/user_profile_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  CustomAppBar(
                    title: Text(
                        'Account',
                      style: Theme.of(context).textTheme.headlineMedium!.apply(color: myColors.white),
                    ),
                  ),
                  //User Profile Card
                  UserprofileTileWidget(onPressed: () { Get.to(() => ProfileScreen()) ;},),
                  SizedBox(height: TSizes.spaceBtwSections,),

                ],
              ),
            ),
            //Body
            Padding(
                padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  // Account Settings
                  SectionHeading(
                      title: "Account Settings",
                    showActionButton: false,
                  ),
                  SizedBox(height: TSizes.spaceBtwItems,),

                  SettingsmenuTileWidget(icon: Iconsax.safe_home, title: 'My Addresses', subTitle: 'Set Shopping delevery adress'),
                  SettingsmenuTileWidget(icon: Iconsax.shopping_cart, title: 'My cart', subTitle: 'Add,remove products and move to checkout'),
                  SettingsmenuTileWidget(icon: Iconsax.bag_tick, title: 'My Orders', subTitle: 'In-progress and completed orders'),
                  SettingsmenuTileWidget(icon: Iconsax.bank, title: 'Bank Account', subTitle: 'Withdraw balance to registered bank account'),
                  SettingsmenuTileWidget(icon: Iconsax.discount_shape, title: 'My Coupons', subTitle: 'List of all discounted coupons'),
                  SettingsmenuTileWidget(icon: Iconsax.notification, title: 'Notifications', subTitle: 'Set any kind of notification image'),
                  SettingsmenuTileWidget(icon: Iconsax.security_card, title: 'Account privacy', subTitle: 'Manage data usage and connected accounts '),

                  //App Settings
                  SizedBox(height: TSizes.spaceBtwItems,),
                  SectionHeading(
                    title: "App Settings",
                    showActionButton: false,
                  ),
                  SizedBox(height: TSizes.spaceBtwItems,),
                  SettingsmenuTileWidget(icon: Iconsax.document_upload, title: 'Load Data', subTitle: 'Upload DAta to your Firebase'),
                  SettingsmenuTileWidget(
                      icon: Iconsax.location,
                    title: 'GeoLocation',
                    subTitle: 'Set recommendation based on loaction',
                    trailing: Switch(value: false, onChanged: (value){}),
                  ),
                  SettingsmenuTileWidget(
                      icon: Iconsax.security_user,
                      title: 'Safe Mode',
                      subTitle: 'Search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value){}),
                  ),
                  SettingsmenuTileWidget(
                      icon: Iconsax.image,
                      title: 'HD Image Quality',
                      subTitle: 'Set Image Quality to be seen',
                    trailing: Switch(value: false, onChanged: (value){}),
                  ),
                  //LOGOUT button

                  SizedBox(height: TSizes.spaceBtwSections,),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: Text('Logout')),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections *2.5),


                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
