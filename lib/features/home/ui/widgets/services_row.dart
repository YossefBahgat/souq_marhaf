import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_Morhaf/core/theming/colors.dart';

import '../../../../core/theming/font_styles.dart';
import 'items_type_container.dart';

class ServicesRow extends StatelessWidget {
  final Function(String) onBrandSelected;
  final String selectedBrand;

  const ServicesRow({
    super.key,
    required this.onBrandSelected,
    required this.selectedBrand,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 15.h),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          spacing: 25.w,
          children: [
            ItemsTypeContainer(
              text: 'الكل',
              onTap: () => onBrandSelected('الكل'),
              isSelected: selectedBrand == 'الكل',
            ),
            ItemsTypeContainer(
              text: 'خدمات اخري',
              onTap: () => onBrandSelected('خدمات اخري'),
              isSelected: selectedBrand == 'خدمات اخري',
            ),
            ItemsTypeContainer(
              text: 'خدمات مقاولات',
              onTap: () => onBrandSelected('خدمات مقاولات'),
              isSelected: selectedBrand == 'خدمات مقاولات',
            ),
            ItemsTypeContainer(
              text: 'خدمات تعقيب',
              onTap: () => onBrandSelected('خدمات تعقيب'),
              isSelected: selectedBrand == 'خدمات تعقيب',
            ),
            ItemsTypeContainer(
              text: 'خدمات التوصيل',
              onTap: () => onBrandSelected('خدمات التوصيل'),
              isSelected: selectedBrand == 'خدمات التوصيل',
            ),
            ItemsTypeContainer(
              text: 'خدمات نقل العفش',
              onTap: () => onBrandSelected('خدمات نقل العفش'),
              isSelected: selectedBrand == 'خدمات نقل العفش',
            ),
            ItemsTypeContainer(
              text: 'خدمات نظافة',
              onTap: () => onBrandSelected('خدمات نظافة'),
              isSelected: selectedBrand == 'خدمات نظافة',
            ),
            ItemsTypeContainer(
              text: 'خدمات الشراء من المواقع العالمية',
              onTap: () => onBrandSelected('خدمات الشراء من المواقع العالمية'),
              isSelected: selectedBrand == 'خدمات الشراء من المواقع العالمية',
            ),
            ItemsTypeContainer(
              text: 'خدمات قانونية',
              onTap: () => onBrandSelected('خدمات قانونية'),
              isSelected: selectedBrand == 'خدمات قانونية',
            ),
            ItemsTypeContainer(
              text: 'خدمات محاسبية ومالية',
              onTap: () => onBrandSelected('خدمات محاسبية ومالية'),
              isSelected: selectedBrand == 'خدمات محاسبية ومالية',
            ),
          ],
        ),
      ),
    );
  }
}
