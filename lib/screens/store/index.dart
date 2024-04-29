import 'package:e_commerce_firebase/widgets/common_widgets/cart_counter_icon_widget.dart';
import 'package:e_commerce_firebase/widgets/custom_widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(
        title: Text(
            'Store',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          CartCounterIcon(
            onPressed: () {  },

          )
        ],

      ),
      body: NestedScrollView(
          headerSliverBuilder: (_,innerBoxIsScrolled){
            return [
            SliverAppBar(


            ),
            ];
          },
          body: Container()),
    );
  }
}
