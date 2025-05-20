import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_Morhaf/core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';
import 'items_type_container.dart';

class JobsRow extends StatelessWidget {
  final Function(String) onBrandSelected;
  final String selectedBrand;

  const JobsRow({
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
              text: 'وظائف ادارية',
              onTap: () => onBrandSelected('وظائف ادارية'),
              isSelected: selectedBrand == 'وظائف ادارية',
            ),
            ItemsTypeContainer(
              text: 'وظائف ازياء وتجميل',
              onTap: () => onBrandSelected('وظائف ازياء وتجميل'),
              isSelected: selectedBrand == 'وظائف ازياء وتجميل',
            ),
            ItemsTypeContainer(
              text: 'وظائف امن وسلامة',
              onTap: () => onBrandSelected('وظائف امن وسلامة'),
              isSelected: selectedBrand == 'وظائف امن وسلامة',
            ),
            ItemsTypeContainer(
              text: 'وظائف تعليمية',
              onTap: () => onBrandSelected('وظائف تعليمية'),
              isSelected: selectedBrand == 'وظائف تعليمية',
            ),
            ItemsTypeContainer(
              text: 'وظائف تقنية وتصميم',
              onTap: () => onBrandSelected('وظائف تقنية وتصميم'),
              isSelected: selectedBrand == 'وظائف تقنية وتصميم',
            ),
            ItemsTypeContainer(
              text: 'وظائف زراعة ورعي',
              onTap: () => onBrandSelected('وظائف زراعة ورعي'),
              isSelected: selectedBrand == 'وظائف زراعة ورعي',
            ),
            ItemsTypeContainer(
              text: 'وظائف طب وتمريض',
              onTap: () => onBrandSelected('وظائف طب وتمريض'),
              isSelected: selectedBrand == 'وظائف طب وتمريض',
            ),
            ItemsTypeContainer(
              text: 'وظائف عمارة وبناء',
              onTap: () => onBrandSelected('وظائف عمارة وبناء'),
              isSelected: selectedBrand == 'وظائف عمارة وبناء',
            ),
            ItemsTypeContainer(
              text: 'وظائف عمالة منزلية',
              onTap: () => onBrandSelected('وظائف عمالة منزلية'),
              isSelected: selectedBrand == 'وظائف عمالة منزلية',
            ),
            ItemsTypeContainer(
              text: 'وظائف مطعم',
              onTap: () => onBrandSelected('وظائف مطعم'),
              isSelected: selectedBrand == 'وظائف مطعم',
            ),
          ],
        ),
      ),
    );
  }
}
