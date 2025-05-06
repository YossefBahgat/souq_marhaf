import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_marhaf/core/theming/colors.dart';

import '../../../../core/theming/font_styles.dart';
import 'items_type_container.dart';

class ToyotaSubRow extends StatelessWidget {
  const ToyotaSubRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 15.h),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          spacing: 25.w,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              height: 53.h,
              decoration: BoxDecoration(
                color: ColorsManager.lightGreen,
                borderRadius: BorderRadius.circular(15.r),
              ),
              alignment: Alignment.center,
              child: Text("الكل", style: TextStyles.font22black),
            ),
            ItemsTypeContainer(text: 'كورولا', onTap: () {}),
            ItemsTypeContainer(text: 'كامري', onTap: () {}),
            ItemsTypeContainer(text: 'لاندكروزر', onTap: () {}),
            ItemsTypeContainer(text: 'افالون', onTap: () {}),
            ItemsTypeContainer(text: 'هايلوكس', onTap: () {}),
            ItemsTypeContainer(text: 'كورولا', onTap: () {}),
            ItemsTypeContainer(text: 'اف جي', onTap: () {}),
            ItemsTypeContainer(text: 'ربع', onTap: () {}),
            ItemsTypeContainer(text: 'شاص', onTap: () {}),
            ItemsTypeContainer(text: 'يارس', onTap: () {}),
            ItemsTypeContainer(text: 'برادو', onTap: () {}),
            ItemsTypeContainer(text: 'فورتشنر', onTap: () {}),
            ItemsTypeContainer(text: 'اوريون', onTap: () {}),
            ItemsTypeContainer(text: 'كراسيدا', onTap: () {}),
            ItemsTypeContainer(text: 'سيكويا', onTap: () {}),
            ItemsTypeContainer(text: 'باص', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
