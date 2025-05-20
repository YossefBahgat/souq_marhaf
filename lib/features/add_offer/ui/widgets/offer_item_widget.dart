import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/font_styles.dart';

class OfferItemWidget extends StatelessWidget {
  const OfferItemWidget({
    super.key,
    required this.text,
    required this.image,
    required this.onTap,
  });

  final String text;
  final String image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 30.h),
        child: Row(
          children: [
            Image.asset(image, height: 60.h, width: 60.w),
            SizedBox(width: 16.w),
            Text(text, style: TextStyles.font20gray,),
            Spacer(),
            Icon(Icons.arrow_forward_outlined, size: 20),
          ],
        ),
      ),
    );
  }
}
