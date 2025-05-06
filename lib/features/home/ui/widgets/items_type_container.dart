import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';

class CarTypeContainer extends StatelessWidget {
  const CarTypeContainer(
      {super.key, required this.text, required this.image, required this.onTap});

  final String text;
  final String image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap:onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        height: 53.h,
        decoration: BoxDecoration(
          color: ColorsManager.appBarGreen,
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text, style: TextStyles.font22black),
            SizedBox(width: 10.w,),
            Image.asset(image),
          ],
        ),
      ),
    );
  }
}
