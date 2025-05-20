import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';

class CommonBottomSheet extends StatelessWidget {
  final Widget child;
  final double? height;

  const CommonBottomSheet({super.key, required this.child, this.height});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.r)),
        child: Container(
          color: ColorsManager.white,
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
          height: height ?? 0.9.sh,
          child: child,
        ),
      ),
    );
  }
}
