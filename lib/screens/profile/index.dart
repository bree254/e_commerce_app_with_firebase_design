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
      appBar: CustomAppBar(
        showBackArrow: false,
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    //Profile Picture
                    CircularImageWidget(image: TImages.user,width: 80,height: 80,),
                    TextButton(onPressed: (){}, child: Text('Change Profile picture')),

                    //Details
                    SizedBox(height: TSizes.spaceBtwItems /2,),
                    Divider(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    //Profile Information
                    SectionHeading(title: 'Profile Information',showActionButton: false,),
                    SizedBox(height: TSizes.spaceBtwItems),
                    ProfileMenuWidget(onPressed: () {  }, title: 'Name', value: 'Code with Magnolia Spruce',),
                    ProfileMenuWidget(onPressed: () {  }, title: 'UserName', value: 'Coding_with_bree',),

                    Divider(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    //Personal Information
                    SectionHeading(title: 'Profile Information',showActionButton: false,),
                    SizedBox(height: TSizes.spaceBtwItems),

                    ProfileMenuWidget(onPressed: () {  }, title: 'User id', value: '45689',icon: Iconsax.copy,),
                    ProfileMenuWidget(onPressed: () {  }, title: 'E-mail', value: 'Coding_with_bree',),
                    ProfileMenuWidget(onPressed: () {  }, title: 'Phone Number', value: '+25475966729',),
                    ProfileMenuWidget(onPressed: () {  }, title: 'Gender', value: 'Female',),
                    ProfileMenuWidget(onPressed: () {  }, title: 'Date of Birth', value: '29 Mar 1999',),

                    
                    Center(
                      child: TextButton(
                          onPressed: (){},
                          child: Text('Close Account',style: TextStyle(color: Colors.red),)),
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

