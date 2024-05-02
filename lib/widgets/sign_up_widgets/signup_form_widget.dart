import 'package:e_commerce_firebase/screens/verify/index.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/utils/constants/text_strings.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/text_widgets/terms_and_conditions_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

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
                  decoration: const InputDecoration(
                      labelText: TTexts.firstName,prefixIcon: Icon(Iconsax.user)
                  ),

                ),
              ),
              const SizedBox(width: TSizes.spaceBtwInputFields,),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: TTexts.lastName,prefixIcon: Icon(Iconsax.user)
                  ),

                ),
              ),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields,),
          // username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),

          const SizedBox(height: TSizes.spaceBtwInputFields,),

          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),

          const SizedBox(height: TSizes.spaceBtwInputFields,),

          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),

          const SizedBox(height: TSizes.spaceBtwInputFields,),

          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: TTexts.password,
                prefixIcon: Icon(Iconsax.call),
                suffixIcon: Icon(Iconsax.eye_slash)
            ),
          ),

          const SizedBox(height: TSizes.spaceBtwSections,),
          // Terms & Conditions checkbox
          const TermsandConditions(),
          const SizedBox(height: TSizes.spaceBtwSections,),
          //   Sign up button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: (){

              Get.to(() => const VerifyEmailAddress());

            }, child: const Text(TTexts.createAccount)),
          )
        ],
      ),
    );
  }
}

