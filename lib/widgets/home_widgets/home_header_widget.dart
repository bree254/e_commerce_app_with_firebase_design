import 'package:e_commerce_firebase/widgets/common_widgets/container_widgets/circular_container_widget.dart';
import 'package:e_commerce_firebase/widgets/custom_widgets/curved_edges_widget.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_firebase/utils/constants/colors.dart';

class HomePrimaryHeaderContainer extends StatelessWidget {
  const HomePrimaryHeaderContainer({
    super.key, required this.child,
  });
  final Widget  child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgesWidget(
      child: Container(
        color: myColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: CircularContainer(
                  backgroundColor: myColors.textwhite.withOpacity(0.1),
                ),),
              Positioned(
                  top: 100,
                  right: -300,
                  child: CircularContainer(
                    backgroundColor: myColors.textwhite.withOpacity(0.1),
                  )),
              child,

            ],
          ),
        ),
      ),
    );
  }
}
