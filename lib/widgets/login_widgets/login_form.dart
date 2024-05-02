import 'package:e_commerce_firebase/screens/main_page/index.dart';
import 'package:e_commerce_firebase/screens/password_configuration/forget_password.dart';
import 'package:e_commerce_firebase/screens/sign_up/index.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            //Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon:Icon(Iconsax.direct_right),
                labelText: TTexts.email,
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields,),

            //Password

            TextFormField(
              decoration: const InputDecoration(
                prefixIcon:Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
                labelText: TTexts.password,
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields,),

            //Remember me & forget password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value){}),
                    const Text(TTexts.rememberMe),
                  ],
                ),
                TextButton(
                  onPressed: (){
                    Get.to(()=> const ForgetPassword());
                  },
                  child: const Text(TTexts.forgetPassword),
                ),

              ],
            ),

            const SizedBox(height: TSizes.spaceBtwSections,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: (){
                    Get.to(() => MainPage());
                  },
                  child: const Text(TTexts.signIn)),
            ),
            const SizedBox(height: TSizes.spaceBtwSections,),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: (){
                    Get.to(() => const SignUpScreen());
                  },
                  child: const Text(TTexts.createAccount)),
            ),
            const SizedBox(height: TSizes.spaceBtwSections,),

          ],
        ),
      ),
    );
  }
}