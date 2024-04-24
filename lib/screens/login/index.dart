import 'package:e_commerce_firebase/common/styles/spacing_styles.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/utils/constants/text_strings.dart';
import 'package:e_commerce_firebase/utils/helpers/helper_functions.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/form_divider.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/social_buttons.dart';
import 'package:e_commerce_firebase/widgets/login_widgets/login_form.dart';
import 'package:e_commerce_firebase/widgets/login_widgets/login_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
              LoginHeader(dark: dark),
              LoginForm(),
              //divider
              FormDivider(dark: dark,dividerText:TTexts.orSignInWith.capitalize!),
              SizedBox(height: TSizes.spaceBtwSections,),
              //Footer
              SocialButtons()

            ],
          ),
        ),
      ),
    );
  }
}





