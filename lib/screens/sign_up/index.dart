import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/utils/constants/text_strings.dart';
import 'package:e_commerce_firebase/utils/helpers/helper_functions.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/form_divider.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/social_buttons.dart';
import 'package:e_commerce_firebase/widgets/sign_up_widgets/signup_form_widget.dart';
import 'package:flutter/material.dart';
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return  Scaffold(
      appBar: AppBar(

      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(TTexts.signupTitle,style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              //Form
              const SignUpForm(),
            //   Divider
              FormDivider(dark: dark, dividerText: TTexts.orSignUpWith),
              const SizedBox(height: TSizes.spaceBtwSections,),
            //   social buttons
              const SocialButtons(),
              const SizedBox(height: TSizes.spaceBtwSections,),
            ],
          ),
        ),
      ),
    );
  }
}


