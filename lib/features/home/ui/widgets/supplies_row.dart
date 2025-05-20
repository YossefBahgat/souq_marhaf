import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_Morhaf/core/theming/colors.dart';

import '../../../../core/theming/font_styles.dart';
import 'items_type_container.dart';

class SuppliesRow extends StatelessWidget {
  final Function(String) onBrandSelected;
  final String selectedBrand;

  const SuppliesRow({
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
              text: 'ساعات',
              onTap: () => onBrandSelected('ساعات'),
              isSelected: selectedBrand == 'ساعات',
            ),
            ItemsTypeContainer(
              text: 'عطور و بخور',
              onTap: () => onBrandSelected('عطور و بخور'),
              isSelected: selectedBrand == 'عطور و بخور',
            ),
            ItemsTypeContainer(
              text: 'مستلزمات راضية',
              onTap: () => onBrandSelected('مستلزمات راضية'),
              isSelected: selectedBrand == 'مستلزمات راضية',
            ),
            ItemsTypeContainer(
              text: 'نظارات',
              onTap: () => onBrandSelected('نظارات'),
              isSelected: selectedBrand == 'نظارات',
            ),
            ItemsTypeContainer(
              text: 'أزياء رجالية',
              onTap: () => onBrandSelected('أزياء رجالية'),
              isSelected: selectedBrand == 'أزياء رجالية',
            ),
            ItemsTypeContainer(
              text: 'أزياء نسائية',
              onTap: () => onBrandSelected('أزياء نسائية'),
              isSelected: selectedBrand == 'أزياء نسائية',
            ),
            ItemsTypeContainer(
              text: 'أزياء ولوازم أطفال',
              onTap: () => onBrandSelected('أزياء ولوازم أطفال'),
              isSelected: selectedBrand == 'أزياء ولوازم أطفال',
            ),
            ItemsTypeContainer(
              text: 'هدايا',
              onTap: () => onBrandSelected('هدايا'),
              isSelected: selectedBrand == 'هدايا',
            ),
            ItemsTypeContainer(
              text: 'أمتعة سفر',
              onTap: () => onBrandSelected('أمتعة سفر'),
              isSelected: selectedBrand == 'أمتعة سفر',
            ),
            ItemsTypeContainer(
              text: 'الصحة والجمال',
              onTap: () => onBrandSelected('الصحة والجمال'),
              isSelected: selectedBrand == 'الصحة والجمال',
            ),
          ],
        ),
      ),
    );
  }
}
