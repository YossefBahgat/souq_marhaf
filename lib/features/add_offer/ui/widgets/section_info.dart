import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/font_styles.dart';

class SectionInfo extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback? onTap;

  const SectionInfo({
    super.key,
    required this.title,
    required this.subtitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyles.font22blackSemibold),
          SizedBox(height: 10.h),
          GestureDetector(
            onTap: onTap,
            child: Text(
              subtitle,
              style: TextStyles.font22black,
            ),
          ),
        ],
      ),
    );
  }
}