import 'package:e_commerce_firebase/utils/helpers/helper_functions.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/container_widgets/circular_container_widget.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_firebase/utils/constants/colors.dart';

class ChoiceChipWidget extends StatelessWidget {
  const ChoiceChipWidget({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });
  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = THelperFunctions.getColor(text)!= null;
    return ChoiceChip(
      label: isColor ? SizedBox() : Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? myColors.white :null,),
      avatar: isColor ? CircularContainer(width: 50, height: 50, backgroundColor: THelperFunctions.getColor(text)!):null,
      labelPadding: isColor ? EdgeInsets.all(0):null,
      padding:EdgeInsets.all(0) ,
      shape: isColor ? CircleBorder() :null,
      backgroundColor:isColor ?  THelperFunctions.getColor(text)!: null,


    );
  }
}