import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';
import '../theming/font_styles.dart';

class FollowTextButton extends StatefulWidget {
  const FollowTextButton({super.key});

  @override
  State<FollowTextButton> createState() => _FollowTextButtonState();
}
bool isFollowed = false;

class _FollowTextButtonState extends State<FollowTextButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: isFollowed ? null : () {
        setState(() {
          isFollowed = true;
        });
      },
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: isFollowed ? Colors.grey : ColorsManager.buttonGreen,
        padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 8.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
      ),
      child: Text(
        isFollowed ? 'تم المتابعة' : 'متابعة',
        style:TextStyles.font25black,
      ),
    );
  }
}
