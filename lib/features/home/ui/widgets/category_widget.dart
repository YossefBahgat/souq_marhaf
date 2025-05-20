import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_Morhaf/features/home/ui/widgets/catergory_items.dart';

// category_widget.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryWidget extends StatelessWidget {
  final Function(String) onCategorySelected;

  const CategoryWidget({super.key, required this.onCategorySelected});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 30.h),
        child: Row(
          children: [
            CategoryPair(
              topImage: "assets/images/car_logo.png",
              topText: "مرهف السيارات",
              bottomImage: "assets/images/furniture.png",
              bottomText: "اثاث",
              onCategorySelected: onCategorySelected,
            ),
            SizedBox(width: 10.w),
            CategoryPair(
              topImage: "assets/images/realty.png",
              topText: "مرهف العقار",
              bottomImage: "assets/images/supplies.png",
              bottomText: "مستلزمات شخصية",
              onCategorySelected: onCategorySelected,
            ),
            SizedBox(width: 10.w),
            CategoryPair(
              topImage: "assets/images/devices.png",
              topText: "مرهف الاجهزة",
              bottomImage: "assets/images/services.png",
              bottomText: "خدمات",
              onCategorySelected: onCategorySelected,
            ),
            SizedBox(width: 10.w),
            CategoryPair(
              topImage: "assets/images/animals.png",
              topText: "حيوانات وطيور",
              bottomImage: "assets/images/jobs.png",
              bottomText: "وظائف",
              onCategorySelected: onCategorySelected,
            ),
            SizedBox(width: 10.w),
            CategoryPair(
              topImage: "assets/images/drinks.png",
              topText: "اطعمة ومشروبات",
              bottomImage: "assets/images/programming.png",
              bottomText: "برمجة وتصاميم",
              onCategorySelected: onCategorySelected,
            ),
            SizedBox(width: 10.w),
            CategoryPair(
              topImage: "assets/images/library.png",
              topText: "مكتبة وفنون",
              bottomImage: "assets/images/hunting.png",
              bottomText: "صيد ورحلات",
              onCategorySelected: onCategorySelected,
            ),
            SizedBox(width: 10.w),
            Padding(
              padding: EdgeInsets.only(right: 15.w),
              child: CategoryItems(
                image: "assets/images/any_morhaf.png",
                text: "كل مرهف",
                onTap: () => onCategorySelected("الكل"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryPair extends StatelessWidget {
  final String topImage;
  final String topText;
  final String bottomImage;
  final String bottomText;
  final Function(String) onCategorySelected;

  const CategoryPair({
    super.key,
    required this.topImage,
    required this.topText,
    required this.bottomImage,
    required this.bottomText,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategoryItems(
          image: topImage,
          text: topText,
          onTap: () => onCategorySelected(topText),
        ),
        SizedBox(height: 25.h),
        CategoryItems(
          image: bottomImage,
          text: bottomText,
          onTap: () => onCategorySelected(bottomText),
        ),
      ],
    );
  }
}
