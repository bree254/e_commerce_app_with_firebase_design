import 'package:e_commerce_firebase/utils/constants/colors.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/widgets/address_widgets/single_address_widget.dart';
import 'package:e_commerce_firebase/widgets/custom_widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'add_new_address.dart';
class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: myColors.primary,
          onPressed: (){Get.to(() => AddNewAddressScreen());},
        child: Icon(Iconsax.add,color: myColors.white,),
      ),
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
            'Addresses',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SingleAddressWidget(selectedAddress: true),
              SingleAddressWidget(selectedAddress: false),
              SingleAddressWidget(selectedAddress: true),

            ],
          ),
        ),
      ),

    );
  }
}
