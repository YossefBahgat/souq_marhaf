import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/font_styles.dart';

class CircleAvatarColumn extends StatelessWidget {
  const CircleAvatarColumn({super.key, required this.username, required this.userImagePath});

  final String username;
  final String userImagePath;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        CircleAvatar(
          radius: 38.r,
          child: ClipOval(
            child: Image.asset(
              userImagePath,
              fit: BoxFit.cover,
              height: 76.h,
              width: 76.w,
            ),
          ),
        ),
        SizedBox(height: 5.h),
        Text(username, style: TextStyles.font22black),
      ],
    );
  }
}
