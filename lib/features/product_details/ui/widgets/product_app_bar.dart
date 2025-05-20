import 'package:flutter/material.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';

class ProductAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProductAppBar({super.key, required this.text, required this.onPressed});

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorsManager.appBarGreen,
      title: Text(text, style: TextStyles.font22blackSemibold),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(Icons.more_vert_sharp, color: ColorsManager.black),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
