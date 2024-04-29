import 'package:e_commerce_firebase/screens/home/index.dart';
import 'package:e_commerce_firebase/screens/store/index.dart';
import 'package:e_commerce_firebase/utils/constants/colors.dart';
import 'package:e_commerce_firebase/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
class MainPage extends StatelessWidget {
   MainPage({super.key});

  final NavigationController _controller = Get.put(NavigationController());
  

  @override
  Widget build(BuildContext context) {
    
    final darMode = THelperFunctions.isDarkMode(context);
    return  Scaffold(
      bottomNavigationBar: Obx (() =>NavigationBar(
          height: 80,
          elevation: 0,
          backgroundColor: darMode ?myColors.black : myColors.white,
          indicatorColor: darMode ? myColors.white.withOpacity(0.1): myColors.black.withOpacity(0.1),
          selectedIndex: _controller.selectedIndex.value,
          onDestinationSelected: (index) =>_controller.selectedIndex.value = index,
          destinations: [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'WishList'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ]
      ),
      ),
      body: Obx(() =>_controller.screens[_controller.selectedIndex.value] ),
    );
  }
}
class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screens = [HomeScreen(),StoreScreen(),Container(color: Colors.orange),Container(color: Colors.red),];
}
