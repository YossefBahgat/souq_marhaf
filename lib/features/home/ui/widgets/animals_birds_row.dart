import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_Morhaf/core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';
import 'items_type_container.dart';

class AnimalsBirdsRow extends StatelessWidget {
  final Function(String) onBrandSelected;
  final String selectedBrand;

  const AnimalsBirdsRow({
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
              text: 'غنم',
              onTap: () => onBrandSelected('غنم'),
              isSelected: selectedBrand == 'غنم',
            ),
            ItemsTypeContainer(
              text: 'ماعز',
              onTap: () => onBrandSelected('ماعز'),
              isSelected: selectedBrand == 'ماعز',
            ),
            ItemsTypeContainer(
              text: 'ببغاء',
              onTap: () => onBrandSelected('ببغاء'),
              isSelected: selectedBrand == 'ببغاء',
            ),
            ItemsTypeContainer(
              text: 'حمام',
              onTap: () => onBrandSelected('حمام'),
              isSelected: selectedBrand == 'حمام',
            ),
            ItemsTypeContainer(
              text: 'قطط',
              onTap: () => onBrandSelected('قطط'),
              isSelected: selectedBrand == 'قطط',
            ),
            ItemsTypeContainer(
              text: 'دجاج',
              onTap: () => onBrandSelected('دجاج'),
              isSelected: selectedBrand == 'دجاج',
            ),
            ItemsTypeContainer(
              text: 'ابل',
              onTap: () => onBrandSelected('ابل'),
              isSelected: selectedBrand == 'ابل',
            ),
            ItemsTypeContainer(
              text: 'خيل',
              onTap: () => onBrandSelected('خيل'),
              isSelected: selectedBrand == 'خيل',
            ),
            ItemsTypeContainer(
              text: 'كلاب',
              onTap: () => onBrandSelected('كلاب'),
              isSelected: selectedBrand == 'كلاب',
            ),
            ItemsTypeContainer(
              text: 'بقر',
              onTap: () => onBrandSelected('بقر'),
              isSelected: selectedBrand == 'بقر',
            ),
            ItemsTypeContainer(
              text: 'أسماك وسلاحف',
              onTap: () => onBrandSelected('أسماك وسلاحف'),
              isSelected: selectedBrand == 'أسماك وسلاحف',
            ),
            ItemsTypeContainer(
              text: 'ارانب',
              onTap: () => onBrandSelected('ارانب'),
              isSelected: selectedBrand == 'ارانب',
            ),
            ItemsTypeContainer(
              text: 'بط',
              onTap: () => onBrandSelected('بط'),
              isSelected: selectedBrand == 'بط',
            ),
            ItemsTypeContainer(
              text: 'سناجب',
              onTap: () => onBrandSelected('سناجب'),
              isSelected: selectedBrand == 'سناجب',
            ),
            ItemsTypeContainer(
              text: 'هامستر',
              onTap: () => onBrandSelected('هامستر'),
              isSelected: selectedBrand == 'هامستر',
            ),
            ItemsTypeContainer(
              text: 'وبر',
              onTap: () => onBrandSelected('وبر'),
              isSelected: selectedBrand == 'وبر',
            ),
          ],
        ),
      ),
    );
  }
}
