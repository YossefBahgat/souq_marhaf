import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';

class ItemsTypeContainer extends StatelessWidget {
  const ItemsTypeContainer({
    super.key,
    required this.text,
    this.image,
    required this.onTap,
    this.isSelected = false,
  });

  final String text;
  final String? image;
  final VoidCallback onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        height: 53.h,
        decoration: BoxDecoration(
          color: isSelected ? ColorsManager.lightGreen : ColorsManager.appBarGreen,
          borderRadius: BorderRadius.circular(15.r),
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text, style: TextStyles.font22black),
            if (image != null) ...[
              SizedBox(width: 10.w),
              Image.asset(
                image!,
              ),
            ],
          ],
        ),

      ),
    );
  }
}
