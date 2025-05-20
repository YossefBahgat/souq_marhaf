import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_Morhaf/core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';
import 'items_type_container.dart';

class RealtyRow extends StatelessWidget {
  final Function(String) onBrandSelected;
  final String selectedBrand;

  const RealtyRow({
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
              text: 'ارضي للبيع',
              onTap: () => onBrandSelected('ارضي للبيع'),
              isSelected: selectedBrand == 'ارضي للبيع',
            ),
            ItemsTypeContainer(
              text: 'شقق للايجار',
              onTap: () => onBrandSelected('شقق للايجار'),
              isSelected: selectedBrand == 'شقق للايجار',
            ),
            ItemsTypeContainer(
              text: 'فلل للبيع',
              onTap: () => onBrandSelected('فلل للبيع'),
              isSelected: selectedBrand == 'فلل للبيع',
            ),
            ItemsTypeContainer(
              text: 'شقق للبيع',
              onTap: () => onBrandSelected('شقق للبيع'),
              isSelected: selectedBrand == 'شقق للبيع',
            ),
            ItemsTypeContainer(
              text: 'بيوت للبيع',
              onTap: () => onBrandSelected('بيوت للبيع'),
              isSelected: selectedBrand == 'بيوت للبيع',
            ),
            ItemsTypeContainer(
              text: 'ارضي تجارية للبيع',
              onTap: () => onBrandSelected('ارضي تجارية للبيع'),
              isSelected: selectedBrand == 'ارضي تجارية للبيع',
            ),
            ItemsTypeContainer(
              text: 'عمارة للبيع',
              onTap: () => onBrandSelected('عمارة للبيع'),
              isSelected: selectedBrand == 'عمارة للبيع',
            ),
            ItemsTypeContainer(
              text: 'استراحات للايجار',
              onTap: () => onBrandSelected('استراحات للايجار'),
              isSelected: selectedBrand == 'استراحات للايجار',
            ),
            ItemsTypeContainer(
              text: 'محلات للتقبيل',
              onTap: () => onBrandSelected('محلات للتقبيل'),
              isSelected: selectedBrand == 'محلات للتقبيل',
            ),
            ItemsTypeContainer(
              text: 'محلات للايجار',
              onTap: () => onBrandSelected('محلات للايجار'),
              isSelected: selectedBrand == 'محلات للايجار',
            ),
            ItemsTypeContainer(
              text: 'عماره للايجار',
              onTap: () => onBrandSelected('عماره للايجار'),
              isSelected: selectedBrand == 'عماره للايجار',
            ),
            ItemsTypeContainer(
              text: 'استرجات للبيع',
              onTap: () => onBrandSelected('استرجات للبيع'),
              isSelected: selectedBrand == 'استرجات للبيع',
            ),
            ItemsTypeContainer(
              text: 'مزارع للبيع',
              onTap: () => onBrandSelected('مزارع للبيع'),
              isSelected: selectedBrand == 'مزارع للبيع',
            ),
            ItemsTypeContainer(
              text: 'فلل للايجار',
              onTap: () => onBrandSelected('فلل للايجار'),
              isSelected: selectedBrand == 'فلل للايجار',
            ),
            ItemsTypeContainer(
              text: 'ادوار للايجار',
              onTap: () => onBrandSelected('ادوار للايجار'),
              isSelected: selectedBrand == 'ادوار للايجار',
            ),
            ItemsTypeContainer(
              text: 'بيوت للايجار',
              onTap: () => onBrandSelected('بيوت للايجار'),
              isSelected: selectedBrand == 'بيوت للايجار',
            ),
            ItemsTypeContainer(
              text: 'دور للبيع',
              onTap: () => onBrandSelected('دور للبيع'),
              isSelected: selectedBrand == 'دور للبيع',
            ),
            ItemsTypeContainer(
              text: 'شاليهات للبيع',
              onTap: () => onBrandSelected('شاليهات للبيع'),
              isSelected: selectedBrand == 'شاليهات للبيع',
            ),
            ItemsTypeContainer(
              text: 'غرف للايجار',
              onTap: () => onBrandSelected('غرف للايجار'),
              isSelected: selectedBrand == 'غرف للايجار',
            ),
            ItemsTypeContainer(
              text: 'قاعة للايجار',
              onTap: () => onBrandSelected('قاعة للايجار'),
              isSelected: selectedBrand == 'قاعة للايجار',
            ),
            ItemsTypeContainer(
              text: 'كمباوند للايجار',
              onTap: () => onBrandSelected('كمباوند للايجار'),
              isSelected: selectedBrand == 'كمباوند للايجار',
            ),
            ItemsTypeContainer(
              text: 'كمباوند للبيع',
              onTap: () => onBrandSelected('كمباوند للبيع'),
              isSelected: selectedBrand == 'كمباوند للبيع',
            ),
            ItemsTypeContainer(
              text: 'مخيمات للايجار',
              onTap: () => onBrandSelected('مخيمات للايجار'),
              isSelected: selectedBrand == 'مخيمات للايجار',
            ),
            ItemsTypeContainer(
              text: 'مزرعة للايجار',
              onTap: () => onBrandSelected('مزرعة للايجار'),
              isSelected: selectedBrand == 'مزرعة للايجار',
            ),
            ItemsTypeContainer(
              text: 'مستودع للبيع',
              onTap: () => onBrandSelected('مستودع للبيع'),
              isSelected: selectedBrand == 'مستودع للبيع',
            ),
            ItemsTypeContainer(
              text: 'مستودعات للايجار',
              onTap: () => onBrandSelected('مستودعات للايجار'),
              isSelected: selectedBrand == 'مستودعات للايجار',
            ),
            ItemsTypeContainer(
              text: 'مكاتب للايجار',
              onTap: () => onBrandSelected('مكاتب للايجار'),
              isSelected: selectedBrand == 'مكاتب للايجار',
            ),
          ],
        ),
      ),
    );
  }
}

