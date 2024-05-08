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
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? myColors.white :null,),
        avatar: isColor ? CircularContainer(width: 50, height: 50, backgroundColor: THelperFunctions.getColor(text)!):null,
        labelPadding: isColor ? const EdgeInsets.all(0):null,
        padding:const EdgeInsets.all(0) ,
        shape: isColor ? const CircleBorder() :null,
        backgroundColor:isColor ?  THelperFunctions.getColor(text)!: null,


      ),
    );
  }
}