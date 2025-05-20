import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';

class Comments extends StatelessWidget {
  const Comments({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 33.w),
      child: Column(
        children: [
          Row(
            children: [
              Text("التعليقات ", style: TextStyles.font26blackSemibold),
              Text("(لايوجد تعليقات)", style: TextStyles.font25black),
            ],
          ),
          SizedBox(height: 48.h),
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              icon: IconButton(
                onPressed: () {},
                icon: Transform.rotate(
                  angle: 1.2,
                  child: Icon(
                    Icons.send_rounded,
                    color: ColorsManager.fontGreen,
                  ),
                ),
              ),
              hintText: "اكتب تعليقك هنا...",
              hintStyle: TextStyles.font25green,
            ),
          ),
          SizedBox(height: 30.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 10.h,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.r),
                    border: Border.all(
                      color: ColorsManager.fontGreen,
                      width: 1.5,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("متابعة الردود", style: TextStyles.font22black),
                      SizedBox(width: 8.w),
                      Transform.rotate(
                        angle: -0.6,
                        child: Icon(
                          Icons.wifi,
                          color: ColorsManager.fontGreen,
                          size: 24.w,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Text("#154572259", style: TextStyles.font22black),
            ],
          ),
          SizedBox(height: 30.h),
        ],
      ),
    );
  }
}
