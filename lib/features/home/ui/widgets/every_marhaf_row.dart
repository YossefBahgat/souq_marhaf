import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_Morhaf/core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';
import 'items_type_container.dart';

class EveryMorhafRow extends StatelessWidget {
  final Function(String) onBrandSelected;
  final String selectedBrand;

  const EveryMorhafRow({
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
              text: 'العاب وترفيه',
              onTap: () => onBrandSelected('العاب وترفيه'),
              isSelected: selectedBrand == 'العاب وترفيه',
            ),
            ItemsTypeContainer(
              text: 'زراعة وحدائق',
              onTap: () => onBrandSelected('زراعة وحدائق'),
              isSelected: selectedBrand == 'زراعة وحدائق',
            ),
            ItemsTypeContainer(
              text: 'حفلات ومناسبات',
              onTap: () => onBrandSelected('حفلات ومناسبات'),
              isSelected: selectedBrand == 'حفلات ومناسبات',
            ),
            ItemsTypeContainer(
              text: 'سفر وسياحة',
              onTap: () => onBrandSelected('سفر وسياحة'),
              isSelected: selectedBrand == 'سفر وسياحة',
            ),
            ItemsTypeContainer(
              text: 'قسم غير مصنف',
              onTap: () => onBrandSelected('قسم غير مصنف'),
              isSelected: selectedBrand == 'قسم غير مصنف',
            ),
            ItemsTypeContainer(
              text: 'مفقودات وموجودات',
              onTap: () => onBrandSelected('مفقودات وموجودات'),
              isSelected: selectedBrand == 'مفقودات وموجودات',
            ),
            ItemsTypeContainer(
              text: 'تعليم وتدريب',
              onTap: () => onBrandSelected('تعليم وتدريب'),
              isSelected: selectedBrand == 'تعليم وتدريب',
            ),
            ItemsTypeContainer(
              text: 'نوادر و تراثيات',
              onTap: () => onBrandSelected('نوادر و تراثيات'),
              isSelected: selectedBrand == 'نوادر و تراثيات',
            ),
            ItemsTypeContainer(
              text: 'مشاريع واستثمارات',
              onTap: () => onBrandSelected('مشاريع واستثمارات'),
              isSelected: selectedBrand == 'مشاريع واستثمارات',
            ),
          ],
        ),
      ),
    );
  }
}
