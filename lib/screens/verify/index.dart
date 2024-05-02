import 'package:e_commerce_firebase/screens/login/index.dart';
import 'package:e_commerce_firebase/screens/success/index.dart';
import 'package:e_commerce_firebase/utils/constants/image_strings.dart';
import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/utils/constants/text_strings.dart';
import 'package:e_commerce_firebase/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class VerifyEmailAddress extends StatelessWidget {
  const VerifyEmailAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold (
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: (){
                Get.offAll(const LoginScreen());
              },
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //   image
              Image(
                width: THelperFunctions.screenWidth() *.6,
                  image: const AssetImage(TImages.deliveredEmailIllustration),
              ),
              const SizedBox(height: TSizes.spaceBtwSections,),
              //   title and subtitle
              Text(TTexts.confirmEmail,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text('support @brendawanjiru72@gmail.com',style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text(TTexts.confirmEmailSubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),

              const SizedBox(height: TSizes.spaceBtwSections,),
              //   buttons
              
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: (){
                      Get.to(() => SuccessScreen(
                        image: TImages.staticSuccessIllustration,
                        title: TTexts.yourAccountCreatedTitle,
                        subTitle: TTexts.yourAccountCreatedTitle,
                        onPressed: () {
                          Get.to(() => const LoginScreen());
                        },


                      ));
                    },
                    child: const Text(TTexts.tContinue),
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: (){},
                  child: const Text(TTexts.resendEmail),
                ),
              ),
            ],


          ),
        ),
      ),

    );
  }
}
