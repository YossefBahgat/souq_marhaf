import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_Morhaf/core/theming/colors.dart';

import '../../../../core/routing/routes.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.white, size: 40.sp),
      backgroundColor: ColorsManager.appBarGreen,
      titleSpacing: 0,
      title: Row(
        children: [
          Flexible(
            child: Container(
              height: 59.h,
              width: 400.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(29.r),
                border: Border.all(color: Color(0xffA2CFED), width: 1.5.w),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          size: 30.sp,
                          color: ColorsManager.gray,
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          "ابحث فى مرهف ",
                          style: TextStyle(
                            color: ColorsManager.gray,
                            fontSize: 23.sp,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Icon(
                    Icons.camera_alt_rounded,
                    size: 35.sp,
                    color: ColorsManager.gray,
                  ),
                  Icon(Icons.mic, color: ColorsManager.gray, size: 35.sp),
                ],
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.sectionsScreen);
            },
            child: Image.asset("assets/images/sections_icon.png"),
          ),
        ],
      ),
    );
  }
}
