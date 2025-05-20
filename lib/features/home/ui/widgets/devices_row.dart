import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_Morhaf/core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';
import 'items_type_container.dart';

class DevicesRow extends StatelessWidget {
  final Function(String) onBrandSelected;
  final String selectedBrand;

  const DevicesRow({
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
              text: 'جوالات',
              onTap: () => onBrandSelected('جوالات'),
              isSelected: selectedBrand == 'جوالات',
            ),
            ItemsTypeContainer(
              text: 'أجهزة تابلت',
              onTap: () => onBrandSelected('أجهزة تابلت'),
              isSelected: selectedBrand == 'أجهزة تابلت',
            ),
            ItemsTypeContainer(
              text: 'أجهزة كمبيوتر',
              onTap: () => onBrandSelected('أجهزة كمبيوتر'),
              isSelected: selectedBrand == 'أجهزة كمبيوتر',
            ),
            ItemsTypeContainer(
              text: 'ألعاب إلكترونية',
              onTap: () => onBrandSelected('ألعاب إلكترونية'),
              isSelected: selectedBrand == 'ألعاب إلكترونية',
            ),
            ItemsTypeContainer(
              text: 'تلفزيونات وصوتيات',
              onTap: () => onBrandSelected('تلفزيونات وصوتيات'),
              isSelected: selectedBrand == 'تلفزيونات وصوتيات',
            ),
            ItemsTypeContainer(
              text: 'كاميرات تصوير',
              onTap: () => onBrandSelected('كاميرات تصوير'),
              isSelected: selectedBrand == 'كاميرات تصوير',
            ),
            ItemsTypeContainer(
              text: 'حسابات واشتركات',
              onTap: () => onBrandSelected('حسابات واشتركات'),
              isSelected: selectedBrand == 'حسابات واشتركات',
            ),
            ItemsTypeContainer(
              text: 'أرقام مميزة',
              onTap: () => onBrandSelected('أرقام مميزة'),
              isSelected: selectedBrand == 'أرقام مميزة',
            ),
            ItemsTypeContainer(
              text: 'أجهزة منزلية ومطبخ',
              onTap: () => onBrandSelected('أجهزة منزلية ومطبخ'),
              isSelected: selectedBrand == 'أجهزة منزلية ومطبخ',
            ),
            ItemsTypeContainer(
              text: 'ال جي LG',
              onTap: () => onBrandSelected('ال جي LG'),
              isSelected: selectedBrand == 'ال جي LG',
            ),
            ItemsTypeContainer(
              text: 'مايكروسوفت Microsoft',
              onTap: () => onBrandSelected('مايكروسوفت Microsoft'),
              isSelected: selectedBrand == 'مايكروسوفت Microsoft',
            ),
            ItemsTypeContainer(
              text: 'باناسونيك Panasonic',
              onTap: () => onBrandSelected('باناسونيك Panasonic'),
              isSelected: selectedBrand == 'باناسونيك Panasonic',
            ),
            ItemsTypeContainer(
              text: 'هيتاشي Hitachi',
              onTap: () => onBrandSelected('هيتاشي Hitachi'),
              isSelected: selectedBrand == 'هيتاشي Hitachi',
            ),
            ItemsTypeContainer(
              text: 'أجهزة غير مصنفة',
              onTap: () => onBrandSelected('أجهزة غير مصنفة'),
              isSelected: selectedBrand == 'أجهزة غير مصنفة',
            ),
            ItemsTypeContainer(
              text: 'مواتير ومولدات',
              onTap: () => onBrandSelected('مواتير ومولدات'),
              isSelected: selectedBrand == 'مواتير ومولدات',
            ),
          ],
        ),
      ),
    );
  }
}
