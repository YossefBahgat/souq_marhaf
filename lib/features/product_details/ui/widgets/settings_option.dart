import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';

class SettingsOption extends StatelessWidget {
  const SettingsOption({super.key, required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        children: [
          Icon(icon, color: ColorsManager.fontGreen, size: 28),
          SizedBox(width: 25.w),
          Text(text, style: TextStyles.font25black),
        ],
      ),
    );
  }
}
