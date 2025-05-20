import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';

class SectionsItemsContainer extends StatelessWidget {
  const SectionsItemsContainer({
    super.key,
    required this.image,
    this.text,
    required this.onTap,
  });

  final String image;
  final String? text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: ColorsManager.chooseItemsGray,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (text != null && text!.isNotEmpty)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Transform.translate(
                    offset: Offset(0, 5.h),
                    child: Text(text!, style: TextStyles.font18blackSemibold),
                  ),
                ),
              SizedBox(height: 10.h),
              Center(
                child: Image.asset(
                  image,
                  width: 180.w,
                  height: 110.h,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
