import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';

class SectionsTextButton extends StatelessWidget {
  const SectionsTextButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
  });

  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        padding: EdgeInsets.all(7),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.r),
          color: backgroundColor,
        ),
        child: Text(
          text,
          style: TextStyles.font22black,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
