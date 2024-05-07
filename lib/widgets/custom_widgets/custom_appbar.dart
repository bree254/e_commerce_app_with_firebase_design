import 'package:e_commerce_firebase/utils/constants/colors.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({
   super.key,
   this.title,
   this.actions,
   this.leadingIcon,
   this.leadingOnPressed,
   this.showBackArrow = false,

});
 final Widget ? title;
 final bool showBackArrow;
 final IconData ? leadingIcon;
 final List < Widget> ? actions;
 final VoidCallback ? leadingOnPressed;
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
   return Padding(
       padding: const EdgeInsets.symmetric(horizontal: TSizes.md),
     child: AppBar(
       automaticallyImplyLeading: false,
       leading: showBackArrow
           ? IconButton(onPressed: (){Get.back();}, icon:  Icon(Iconsax.arrow_left,color: dark ? myColors.white:myColors.dark,))
           :leadingIcon !=null ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon)):null,
       title: title,
       actions: actions,

     ),
   );
  }


  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);


}