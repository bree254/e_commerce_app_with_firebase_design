import 'package:e_commerce_firebase/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_firebase/utils/constants/colors.dart';
import 'package:get/get.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({
    super.key,
    required this.dark, required this.dividerText,
  });

  final bool dark;
  final String dividerText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? myColors.darkGrey : myColors.grey ,thickness: 0.5,indent: 60,endIndent: 5,
          ),
        ),
        Text(dividerText,style: Theme.of(context).textTheme.labelMedium,),
        Flexible(
          child: Divider(
            color: dark ? myColors.darkGrey : myColors.grey ,thickness: 0.5,indent: 5,endIndent: 60,
          ),
        ),
      ],
    );
  }
}