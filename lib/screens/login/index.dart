import 'package:e_commerce_firebase/common/styles/spacing_styles.dart';
import 'package:e_commerce_firebase/utils/constants/image_strings.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/utils/constants/text_strings.dart';
import 'package:e_commerce_firebase/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunctions.isDarkMode(context);

    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: mySpacingStyle.paddingWithAppBarHeight,
          child: Column(
            
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                      image: AssetImage(dark ? TImages.lightAppLogo : TImages.darkAppLogo),
                  ),
                  Text(TTexts.loginTitle,style: Theme.of(context).textTheme.headlineMedium,),
                  Text(TTexts.loginSubTitle,style: Theme.of(context).textTheme.bodyMedium,),
                ],
              ),
              Form(
                  child: Column(
                    children: [
                      //Email
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon:Icon(Iconsax.direct_right),
                          labelText: TTexts.email,
                        ),
                      ),
                      SizedBox(height: TSizes.spaceBtwInputFields,),

                      //Password

                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon:Icon(Iconsax.password_check),
                          suffixIcon: Icon(Iconsax.eye_slash),
                          labelText: TTexts.password,
                        ),
                      ),
                      SizedBox(height: TSizes.spaceBtwInputFields,),

                      //Remember me & forget password
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon:Icon(Iconsax.direct_right),
                          labelText: TTexts.email,
                        ),
                      ),
                      SizedBox(height: TSizes.spaceBtwInputFields,),
                    ],
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
