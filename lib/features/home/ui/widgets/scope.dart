import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';

class Scope extends StatelessWidget {
  const Scope({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
