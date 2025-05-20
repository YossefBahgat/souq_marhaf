import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/font_styles.dart';

class CircleAvatarUsername extends StatelessWidget {
  const CircleAvatarUsername({super.key, required this.username, required this.userImagePath});

  final String username;
  final String userImagePath;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        CircleAvatar(
          child: ClipOval(
            child: Image.asset(
              userImagePath,
              fit: BoxFit.cover,
              height: 60.h,
              width: 60.w,
            ),
          ),
        ),
        SizedBox(width: 20.w),
        Text(username, style: TextStyles.font17gray),
      ],
    );
  }
}
