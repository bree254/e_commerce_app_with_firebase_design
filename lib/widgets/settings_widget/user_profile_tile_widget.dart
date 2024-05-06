import 'package:e_commerce_firebase/utils/constants/image_strings.dart';
import 'package:e_commerce_firebase/widgets/common_widgets/image_widgets/circular_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_firebase/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';
class UserprofileTileWidget extends StatelessWidget {
  const UserprofileTileWidget({
    super.key,
    required this.onPressed,
  });
final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircularImageWidget(
        image: TImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'Code with Magnolia Spruce',
        style: Theme.of(context).textTheme.headlineSmall!.apply(color: myColors.white),
      ),
      subtitle:  Text(
        'brendawanjiru72@gmail.com',
        style: Theme.of(context).textTheme.bodyMedium!.apply(color: myColors.white),
      ),
      trailing: IconButton(
          onPressed:onPressed,
          icon: Icon(Iconsax.edit,color: myColors.white,)),
    );
  }
}