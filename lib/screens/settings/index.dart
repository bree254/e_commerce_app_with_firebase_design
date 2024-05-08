import 'package:e_commerce_firebase/screens/addresses/index.dart';
import 'package:e_commerce_firebase/screens/cart/index.dart';
import 'package:e_commerce_firebase/screens/orders/index.dart';
import 'package:e_commerce_firebase/screens/profile/index.dart';
import 'package:e_commerce_firebase/utils/constants/colors.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
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
                  UserprofileTileWidget(onPressed: () { Get.to(() => const ProfileScreen()) ;},),
                  const SizedBox(height: TSizes.spaceBtwSections,),

                ],
              ),
            ),
            //Body
            Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  // Account Settings
                  const SectionHeading(
                      title: "Account Settings",
                    showActionButton: false,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems,),

                  SettingsmenuTileWidget(icon: Iconsax.safe_home, title: 'My Addresses', subTitle: 'Set Shopping delevery adress',onTap: (){Get.to(() => const UserAddressScreen());},),
                  SettingsmenuTileWidget(icon: Iconsax.shopping_cart, title: 'My cart', subTitle: 'Add,remove products and move to checkout',onTap: (){Get.to(() => const CartScreen());},),
                  SettingsmenuTileWidget(icon: Iconsax.bag_tick, title: 'My Orders', subTitle: 'In-progress and completed orders',onTap: (){Get.to(() => const OrderScreen());}),
                  const SettingsmenuTileWidget(icon: Iconsax.bank, title: 'Bank Account', subTitle: 'Withdraw balance to registered bank account'),
                  const SettingsmenuTileWidget(icon: Iconsax.discount_shape, title: 'My Coupons', subTitle: 'List of all discounted coupons'),
                  const SettingsmenuTileWidget(icon: Iconsax.notification, title: 'Notifications', subTitle: 'Set any kind of notification image'),
                  const SettingsmenuTileWidget(icon: Iconsax.security_card, title: 'Account privacy', subTitle: 'Manage data usage and connected accounts '),

                  //App Settings
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  const SectionHeading(
                    title: "App Settings",
                    showActionButton: false,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  const SettingsmenuTileWidget(icon: Iconsax.document_upload, title: 'Load Data', subTitle: 'Upload DAta to your Firebase'),
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

                  const SizedBox(height: TSizes.spaceBtwSections,),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: const Text('Logout')),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections *2.5),


                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
