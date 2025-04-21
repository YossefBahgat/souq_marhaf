import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/font_styles.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            child: Column(
              children: [
                Image.asset(
                  "assets/images/add_story.png",
                  height: 93.h,
                  width: 94.w,
                ),
                SizedBox(height: 9.h),
                Text("اضف \nقصتك", style: TextStyles.font20gray),
              ],
            ),
          ),
          SizedBox(width: 20.w),
          InkWell(
            onTap: () {},
            child: Column(
              children: [
                Image.asset(
                  "assets/images/video.png",
                  height: 93.h,
                  width: 94.w,
                ),
                SizedBox(height: 9.h),
                Text("مقترحات \n الفيديو", style: TextStyles.font20gray),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
