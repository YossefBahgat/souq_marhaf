import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_marhaf/core/theming/colors.dart';
import 'package:souq_marhaf/core/theming/font_styles.dart';
import 'package:souq_marhaf/features/home/ui/widgets/category_widget.dart';
import 'package:souq_marhaf/features/home/ui/widgets/filter_widget.dart';
import 'package:souq_marhaf/features/home/ui/widgets/story_widget.dart';

class HomeBodyScreen extends StatelessWidget {
  const HomeBodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StoryWidget(),
        CategoryWidget(),
        FilterWidget(),
        Padding(
          padding: EdgeInsets.only(right: 16.w,top: 10.h),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                height: 65.h,
                width: 149.w,
                decoration: BoxDecoration(
                  color: ColorsManager.backgroundFilter,
                  borderRadius: BorderRadius.circular(23.r),
                ),
                child: Image.asset(
                  "assets/images/scope.png",
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
