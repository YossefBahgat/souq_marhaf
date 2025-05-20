import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_Morhaf/core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';
import 'items_type_container.dart';

class CategoriesRow extends StatelessWidget {
  final List<String> categories;
  final String selectedItem;
  final Function(String) onItemSelected;

  const CategoriesRow({
    super.key,
    required this.categories,
    required this.selectedItem,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 15.h),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: categories.map((category) {
            final isSelected = selectedItem == category;
            return Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: ItemsTypeContainer(
                text: category,
                isSelected: isSelected,
                onTap: () => onItemSelected(category),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
