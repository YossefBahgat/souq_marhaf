import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_Morhaf/core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';
import 'items_type_container.dart';

class CarsTypeRow extends StatelessWidget {
  final Function(String) onBrandSelected;
  final String selectedBrand;

  const CarsTypeRow({
    super.key,
    required this.onBrandSelected,
    required this.selectedBrand,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w,vertical: 15.h),
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
              text: 'تويوتا',
              image: 'assets/images/toyota_small_logo.png',
              onTap: () => onBrandSelected('تويوتا'),
              isSelected: selectedBrand == 'تويوتا',
            ),
            ItemsTypeContainer(
              text: 'فورد',
              image: 'assets/images/ford_logo.png',
              onTap: () => onBrandSelected('فورد'),
              isSelected: selectedBrand == 'فورد',
            ),
            ItemsTypeContainer(
              text: 'شيفرولية',
              image: 'assets/images/chevrolet_logo2.png',
              onTap: () => onBrandSelected('شيفرولية'),
              isSelected: selectedBrand == 'شيفرولية',
            ),
            ItemsTypeContainer(
              text: 'قطع غيار وملحقات',
              image: 'assets/images/accessories.png',
              onTap: () => onBrandSelected('قطع غيار وملحقات'),
              isSelected: selectedBrand == 'قطع غيار وملحقات',
            ),
            ItemsTypeContainer(
              text: 'نيسان',
              image: 'assets/images/nissan_logo.png',
              onTap: () => onBrandSelected('نيسان'),
              isSelected: selectedBrand == 'نيسان',
            ),
            ItemsTypeContainer(
              text: 'هيونداي',
              image: 'assets/images/hyundai_logo.png',
              onTap: () => onBrandSelected('هيونداي'),
              isSelected: selectedBrand == 'هيونداي',
            ),
            ItemsTypeContainer(
              text: 'جنسس',
              image: 'assets/images/genesis_logo.png',
              onTap: () => onBrandSelected('جنسس'),
              isSelected: selectedBrand == 'جنسس',
            ),
            ItemsTypeContainer(
              text: 'لكزس',
              image: 'assets/images/lexeslogo.png',
              onTap: () => onBrandSelected('لكزس'),
              isSelected: selectedBrand == 'لكزس',
            ),
            ItemsTypeContainer(
              text: 'جي ام سي',
              image: 'assets/images/gmc.png',
              onTap: () => onBrandSelected('جي ام سي'),
              isSelected: selectedBrand == 'جي ام سي',
            ),
            ItemsTypeContainer(
              text: 'شاحنات ومعدات ثقيلة',
              image: 'assets/images/equipment_logo.png',
              onTap: () => onBrandSelected('شاحنات ومعدات ثقيلة'),
              isSelected: selectedBrand == 'شاحنات ومعدات ثقيلة',
            ),
            ItemsTypeContainer(
              text: 'مرسيدس',
              image: 'assets/images/mercedes.png',
              onTap: () => onBrandSelected('مرسيدس'),
              isSelected: selectedBrand == 'مرسيدس',
            ),
            ItemsTypeContainer(
              text: 'هوندا',
              image: 'assets/images/honda.png',
              onTap: () => onBrandSelected('هوندا'),
              isSelected: selectedBrand == 'هوندا',
            ),
            ItemsTypeContainer(
              text: 'بي ام دبليو',
              image: 'assets/images/bmw.png',
              onTap: () => onBrandSelected('بي ام دبليو'),
              isSelected: selectedBrand == 'بي ام دبليو',
            ),
            ItemsTypeContainer(
              text: 'دبابات',
              image: 'assets/images/motorcycle.png',
              onTap: () => onBrandSelected('دبابات'),
              isSelected: selectedBrand == 'دبابات',
            ),
            ItemsTypeContainer(
              text: 'كيا',
              image: 'assets/images/kia.png',
              onTap: () => onBrandSelected('كيا'),
              isSelected: selectedBrand == 'كيا',
            ),
          ],
        ),
      ),
    );
  }
}
