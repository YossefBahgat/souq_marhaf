import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_marhaf/features/home/ui/widgets/catergory_items.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 30.h),
        child: Row(
          spacing: 10.w,
          children: [
            CategoryPair(
              topImage: "assets/images/car.png",
              topText: "مرهف السيارات",
              bottomImage: "assets/images/furniture.png",
              bottomText: "اثاث",
            ),
            CategoryPair(
              topImage: "assets/images/realty.png",
              topText: "مرهف العقار",
              bottomImage: "assets/images/supplies.png",
              bottomText: "مستلزمات شخصية",
            ),
            CategoryPair(
              topImage: "assets/images/devices.png",
              topText: "مرهف الاجهزة",
              bottomImage: "assets/images/services.png",
              bottomText: "خدمات",
            ),
            CategoryPair(
              topImage: "assets/images/animals.png",
              topText: "حيوانات وطيور",
              bottomImage: "assets/images/jobs.png",
              bottomText: "وظائف",
            ),
            CategoryPair(
              topImage: "assets/images/drinks.png",
              topText: "اطعمة ومشروبات",
              bottomImage: "assets/images/programming.png",
              bottomText: "برمجة وتصاميم",
            ),
            CategoryPair(
              topImage: "assets/images/library.png",
              topText: "مكتبة وفنون",
              bottomImage: "assets/images/hunting.png",
              bottomText: "صيد ورحلات",
            ),
            Padding(
              padding: EdgeInsets.only(right: 15.w),
              child: CatergoryItems(
                image: "assets/images/any_marhaf.png",
                text: "كل مرهف",
                onTap: () {},
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

  const CategoryPair({
    super.key,
    required this.topImage,
    required this.topText,
    required this.bottomImage,
    required this.bottomText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CatergoryItems(image: topImage, text: topText, onTap: () {}),
        SizedBox(height: 25.h),
        CatergoryItems(image: bottomImage, text: bottomText, onTap: () {}),
      ],
    );
  }
}
