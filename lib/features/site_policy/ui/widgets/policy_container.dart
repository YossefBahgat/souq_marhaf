import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theming/colors.dart';
import '../../../core/theming/font_styles.dart';

class PolicyContainer extends StatelessWidget {
  const PolicyContainer({
    super.key,
    required this.text,
    required this.image ,
    required this.onPressed,
  });

  final String text;
  final String image;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: TextButton(
        onPressed: onPressed,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Image.asset(image),
            ),
            Text(text, style: TextStyles.font26blackSemibold),
            Spacer(),
            Icon(Icons.arrow_forward_ios, size: 35.sp, color: Colors.black),
          ],
        ),
      ),
    );
  }
}
