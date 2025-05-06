import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_marhaf/core/theming/colors.dart';

import '../../../../core/theming/font_styles.dart';
import 'items_type_container.dart';

class ItemsTypeRow extends StatelessWidget {
  const ItemsTypeRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
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
            ItemsTypeContainer(
              text: 'تويوتا',
              image: 'assets/images/toyota_small_logo.png',
              onTap: () {},
            ),
            ItemsTypeContainer(
              text: 'فورد',
              image: 'assets/images/ford_logo.png',
              onTap: () {},
            ),
            ItemsTypeContainer(
              text: 'شيفرولية',
              image: 'assets/images/chevrolet_logo2.png',
              onTap: () {},
            ),
            ItemsTypeContainer(
              text: 'قطع غيار وملحقات',
              image: 'assets/images/accessories.png',
              onTap: () {},
            ),
            ItemsTypeContainer(
              text: 'نيسان',
              image: 'assets/images/nissan_logo.png',
              onTap: () {},
            ),
            ItemsTypeContainer(
              text: 'هيونداي',
              image: 'assets/images/hyundai_logo.png',
              onTap: () {},
            ),
            ItemsTypeContainer(
              text: 'جنسس',
              image: 'assets/images/genesis_logo.png',
              onTap: () {},
            ),
            ItemsTypeContainer(
              text: 'لكزس',
              image: 'assets/images/lexeslogo.png',
              onTap: () {},
            ),
            ItemsTypeContainer(
              text: 'جي ام سي',
              image: 'assets/images/gmc.png',
              onTap: () {},
            ),
            ItemsTypeContainer(
              text: 'شاحنات ومعدات ثقيلة',
              image: 'assets/images/equipment_logo.png',
              onTap: () {},
            ),
            ItemsTypeContainer(
              text: 'مرسيدس',
              image: 'assets/images/mercedes.png',
              onTap: () {},
            ),
            ItemsTypeContainer(
              text: 'هوندا',
              image: 'assets/images/honda.png',
              onTap: () {},
            ),
            ItemsTypeContainer(
              text: 'بي ام دبليو',
              image: 'assets/images/bmw.png',
              onTap: () {},
            ),
            ItemsTypeContainer(
              text: 'دبابات',
              image: 'assets/images/motorcycle.png',
              onTap: () {},
            ),
            ItemsTypeContainer(
              text: 'كيا',
              image: 'assets/images/kia.png',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
