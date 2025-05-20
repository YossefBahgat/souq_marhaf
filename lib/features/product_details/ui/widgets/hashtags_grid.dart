import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';

class HashtagsGrid extends StatelessWidget {
  const HashtagsGrid({super.key});
  static final List<String> hashtags = [
    "#ملابس نسائية",
    "#مستلزمات شخصية",
    "#كل مرهف",
    "#جلابيات",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50.w),
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: ColorsManager.backContainerGray,
      ),
      child: GridView.builder(
        itemCount: hashtags.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3.5,
        ),
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Text(hashtags[index], style: TextStyles.font22black),
          );
        },
      ),
    );
  }
}
