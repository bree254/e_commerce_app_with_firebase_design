import 'package:e_commerce_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_firebase/widgets/custom_widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const CustomAppBar(
        showBackArrow: true,
        title: Text('Add new Address'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.user),
                    labelText: 'Name',
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwInputFields,),
                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.mobile),
                      labelText: 'Phone Number',
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwInputFields,),

                  Row(
                    children: [
                      Expanded(
                        child:TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.building_31),
                          labelText: 'Street',
                        ),
                      ),
                      ),
                      const SizedBox(width: TSizes.spaceBtwInputFields,),
                      Expanded(
                        child:TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.code),
                            labelText: 'Postal Code',
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: TSizes.spaceBtwInputFields,),

                  Row(
                    children: [
                      Expanded(
                        child:TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.building),
                            labelText: 'City',
                          ),
                        ),
                      ),
                      const SizedBox(width: TSizes.spaceBtwInputFields,),
                      Expanded(
                        child:TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.activity),
                            labelText: 'State',
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: TSizes.spaceBtwInputFields,),

                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.global),
                      labelText: 'Country',
                    ),
                  ),

                  const SizedBox(height: TSizes.spaceBtwInputFields,),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: (){},
                        child: const Text(
                            'Save',
                        ),
                    ),
                  )




                ],

          )),

        ),
      ),

    );
  }
}
