import 'package:e_commerce_firebase/utils/constants/image_strings.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/image_widgets/circular_image_widget.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/text_widgets/section_heading.dart';
import 'package:e_commerce_firebase/widgets/custom_widgets/custom_appbar.dart';
import 'package:e_commerce_firebase/widgets/settings_widget/profile_menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const CustomAppBar(
        showBackArrow: false,
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    //Profile Picture
                    const CircularImageWidget(image: TImages.user,width: 80,height: 80,),
                    TextButton(onPressed: (){}, child: const Text('Change Profile picture')),

                    //Details
                    const SizedBox(height: TSizes.spaceBtwItems /2,),
                    const Divider(),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    //Profile Information
                    const SectionHeading(title: 'Profile Information',showActionButton: false,),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    ProfileMenuWidget(onPressed: () {  }, title: 'Name', value: 'Code with Magnolia Spruce',),
                    ProfileMenuWidget(onPressed: () {  }, title: 'UserName', value: 'Coding_with_bree',),

                    const Divider(),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    //Personal Information
                    const SectionHeading(title: 'Profile Information',showActionButton: false,),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    ProfileMenuWidget(onPressed: () {  }, title: 'User id', value: '45689',icon: Iconsax.copy,),
                    ProfileMenuWidget(onPressed: () {  }, title: 'E-mail', value: 'Coding_with_bree',),
                    ProfileMenuWidget(onPressed: () {  }, title: 'Phone Number', value: '+25475966729',),
                    ProfileMenuWidget(onPressed: () {  }, title: 'Gender', value: 'Female',),
                    ProfileMenuWidget(onPressed: () {  }, title: 'Date of Birth', value: '29 Mar 1999',),

                    
                    Center(
                      child: TextButton(
                          onPressed: (){},
                          child: const Text('Close Account',style: TextStyle(color: Colors.red),)),
                    )
                  ],
                ),
              )
            ],
          ),
       ),
      ),
      
    );
  }
}

