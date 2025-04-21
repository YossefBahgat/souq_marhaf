import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_marhaf/features/log_in/ui/log_in_screen.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';

class DrawerContainer extends StatelessWidget {
  const DrawerContainer({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
  });

  final String text;
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      color: ColorsManager.backDrawer,
      child: TextButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.arrow_back_ios_new, size: 30.sp),
            Text(text, style: TextStyles.font22black),
            Icon(icon, size: 50.sp),
          ],
        ),
      ),
    );
  }
}

