import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/font_styles.dart';

class ProductDescription extends StatelessWidget {
  final String additionalInfo;

  const ProductDescription({super.key, required this.additionalInfo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 55.w, vertical: 35.h),
      child: Text(
        additionalInfo,
        style: TextStyles.font22black,
      ),
    );
  }
}
