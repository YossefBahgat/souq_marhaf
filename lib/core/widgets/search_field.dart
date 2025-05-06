import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_marhaf/core/theming/font_styles.dart';
import '../../../../core/theming/colors.dart';

class BrandSearchField extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const BrandSearchField({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 23.w),
      child: TextField(
        style: TextStyles.font25black,
        onChanged: onChanged,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 5.h),
          hintText: "بحث",
          hintStyle: TextStyles.font25black,
          suffixIcon: Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Icon(
              Icons.search,
              size: 35.sp,
              color: ColorsManager.black.withOpacity(0.51),
            ),
          ),
          suffixIconConstraints: BoxConstraints(
            minHeight: 24.h,
            minWidth: 24.w,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.r),
            borderSide: BorderSide(
              color: ColorsManager.black.withOpacity(0.73),
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.r),
            borderSide: BorderSide(color: ColorsManager.black, width: 1),
          ),
        ),
      ),
    );
  }
}
