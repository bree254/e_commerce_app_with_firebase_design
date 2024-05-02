import 'package:e_commerce_firebase/utils/constants/colors.dart';
import 'package:e_commerce_firebase/utils/device/device_utility.dart';
import 'package:e_commerce_firebase/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
class CustomTabbar extends StatelessWidget implements PreferredSizeWidget{
  const CustomTabbar({
    super.key,
    required this.tabs


  });
   final List <Widget> tabs;
  @override
  Widget build(BuildContext context) {
    final dark =THelperFunctions.isDarkMode(context);
   return Material(
     color: dark ?myColors.black:myColors.white,
     child: TabBar(
       tabs:tabs,
       isScrollable: true,
       indicatorColor: myColors.primary,
       unselectedLabelColor: myColors.darkGrey,
       labelColor: THelperFunctions.isDarkMode(context)?myColors.white:myColors.primary,

     ),
   );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());

}