import 'package:e_commerce_firebase/screens/verify/index.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/utils/constants/text_strings.dart';
import 'package:e_commerce_firebase/utils/helpers/helper_functions.dart';
import 'package:e_commerce_firebase/widgets/terms_and_conitions_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:e_commerce_firebase/utils/constants/colors.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,

  });



  @override
  Widget build(BuildContext context) {

    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                      labelText: TTexts.firstName,prefixIcon: Icon(Iconsax.user)
                  ),

                ),
              ),
              SizedBox(width: TSizes.spaceBtwInputFields,),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                      labelText: TTexts.lastName,prefixIcon: Icon(Iconsax.user)
                  ),

                ),
              ),
            ],
          ),
          SizedBox(height: TSizes.spaceBtwInputFields,),
          // username
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: TTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),

          SizedBox(height: TSizes.spaceBtwInputFields,),

          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: TTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),

          SizedBox(height: TSizes.spaceBtwInputFields,),

          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: TTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),

          SizedBox(height: TSizes.spaceBtwInputFields,),

          TextFormField(
            expands: false,
            decoration: InputDecoration(
                labelText: TTexts.password,
                prefixIcon: Icon(Iconsax.call),
                suffixIcon: Icon(Iconsax.eye_slash)
            ),
          ),

          SizedBox(height: TSizes.spaceBtwSections,),
          // Terms & Conditions checkbox
          TermsandConditions(),
          SizedBox(height: TSizes.spaceBtwSections,),
          //   Sign up button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: (){

              Get.to(() => VerifyEmailAddress());

            }, child: Text(TTexts.createAccount)),
          )
        ],
      ),
    );
  }
}

