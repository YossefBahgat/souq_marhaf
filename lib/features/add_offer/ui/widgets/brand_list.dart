import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_Morhaf/core/theming/font_styles.dart';
import '../../../../core/theming/colors.dart';

class BrandList extends StatelessWidget {
  final List<String> brands;
  final String? selectedBrand;
  final Function(String) onSelect;

  const BrandList({
    super.key,
    required this.brands,
    required this.selectedBrand,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 23.w),
      child: Column(
        children: brands.map((brand) {
          bool isSelected = brand == selectedBrand;
          return InkWell(
            onTap: () => onSelect(brand),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 5.w),
                    Icon(
                      isSelected ? Icons.check_box : Icons.check_box_outline_blank,
                      color: ColorsManager.fontGreen,
                    ),
                    SizedBox(width: 20.w),
                    Text(brand, style: TextStyles.font25black),
                  ],
                ),
                Divider(height: 30.h),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
