import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_Morhaf/core/theming/colors.dart';

import '../../../../core/theming/font_styles.dart';
import 'items_type_container.dart';

class FurnitureRow extends StatelessWidget {
  final Function(String) onBrandSelected;
  final String selectedBrand;

  const FurnitureRow({
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
              text: 'أثاث خارجي',
              onTap: () => onBrandSelected('أثاث خارجي'),
              isSelected: selectedBrand == 'أثاث خارجي',
            ),
            ItemsTypeContainer(
              text: 'أثاث مكتبي',
              onTap: () => onBrandSelected('أثاث مكتبي'),
              isSelected: selectedBrand == 'أثاث مكتبي',
            ),
            ItemsTypeContainer(
              text: 'أدوات منزلية',
              onTap: () => onBrandSelected('أدوات منزلية'),
              isSelected: selectedBrand == 'أدوات منزلية',
            ),
            ItemsTypeContainer(
              text: 'أسرة ومراتب',
              onTap: () => onBrandSelected('أسرة ومراتب'),
              isSelected: selectedBrand == 'أسرة ومراتب',
            ),
            ItemsTypeContainer(
              text: 'تحف وديكور',
              onTap: () => onBrandSelected('تحف وديكور'),
              isSelected: selectedBrand == 'تحف وديكور',
            ),
            ItemsTypeContainer(
              text: 'خزائن ودواليب',
              onTap: () => onBrandSelected('خزائن ودواليب'),
              isSelected: selectedBrand == 'خزائن ودواليب',
            ),
            ItemsTypeContainer(
              text: 'طاولات وكراسي',
              onTap: () => onBrandSelected('طاولات وكراسي'),
              isSelected: selectedBrand == 'طاولات وكراسي',
            ),
            ItemsTypeContainer(
              text: 'مجالس ومفروشات',
              onTap: () => onBrandSelected('مجالس ومفروشات'),
              isSelected: selectedBrand == 'مجالس ومفروشات',
            ),
          ],
        ),
      ),
    );
  }
}
