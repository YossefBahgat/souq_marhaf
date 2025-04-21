import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/font_styles.dart';

class CatergoryItems extends StatelessWidget {
  const CatergoryItems({
    super.key,
    required this.image,
    required this.text,
    required this.onTap,
  });

  final String image;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Image.asset(image,height:100.h ,width: 100.w,),
          SizedBox(height: 5.h),
          Text(text, style: TextStyles.font20gray),
        ],
      ),
    );
  }
}
