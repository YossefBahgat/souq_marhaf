import 'package:flutter/material.dart';
import '../theming/colors.dart';
import '../theming/font_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorsManager.appBarGreen,
      title: Text(text, style: TextStyles.font26blackSemibold),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
