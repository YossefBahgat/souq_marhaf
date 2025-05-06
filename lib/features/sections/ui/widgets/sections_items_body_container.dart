import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';

class RecommendedItemsContainer extends StatelessWidget {
  const RecommendedItemsContainer({
    super.key,
    required this.image,
    required this.text,
  });

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsManager.chooseItemsGray,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Stack(
        children: [
          Image.asset(
            image,
            //    fit: BoxFit.cover,
          ),
          Positioned(
            top: 12.h,
            right: 17.w,
            child: Text(text, style: TextStyles.font18blackSemibold),
          ),
        ],
      ),
    );
  }
}
