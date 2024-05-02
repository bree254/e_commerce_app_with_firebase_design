import 'package:e_commerce_firebase/screens/password_configuration/reset_password.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //headings

            Text(TTexts.forgetPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
            const SizedBox(height: TSizes.spaceBtwItems,),
            Text(TTexts.forgetPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
            const SizedBox(height: TSizes.spaceBtwSections*2,),

          //   textfield
            TextFormField(
              decoration: const InputDecoration(labelText: TTexts.email,prefixIcon: Icon(Iconsax.direct_right)),
            ),
            const SizedBox(height: TSizes.spaceBtwSections,),
            //submit
            SizedBox(
              width:double.infinity,
              child: ElevatedButton(onPressed: (){
                Get.to(() => const ResetPassword());
              }, child: const Text(TTexts.submit)),
            )
          ],
        ),
      ),
    );
  }
}
