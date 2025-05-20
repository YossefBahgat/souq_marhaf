import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_Morhaf/features/sections/ui/widgets/sections_items_body_container.dart';
import '../../../../core/theming/font_styles.dart';

class RecommendedBody extends StatelessWidget {
  const RecommendedBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 20.w, top: 10.h),
          child: Text("اقسام مقترحات", style: TextStyles.font22black),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              SectionsItemsContainer(
                image: 'assets/images/car_photo.png',
                text: 'سيارات',
                onTap: () {},
              ),
              Row(
                children: [
                  Expanded(
                    child: SectionsItemsContainer(
                      image: "assets/images/moto.png",
                      text: "دبابات",
                      onTap: () {},
                    ),
                  ),
                  SizedBox(width: 18.w),
                  Expanded(
                    child: SectionsItemsContainer(
                      image: "assets/images/audi.png",
                      text: "سيارات للتنازل",
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: SectionsItemsContainer(
                      image: "assets/images/metal_plate.png",
                      text: "لوحات مميزية",
                      onTap: () {},
                    ),
                  ),
                  SizedBox(width: 18.w),
                  Expanded(
                    child: SectionsItemsContainer(
                      image: "assets/images/winch.png",
                      text: "سطحة",
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              SectionsItemsContainer(
                image: 'assets/images/car-steering.png',
                text: 'تعليم قيادة',
                onTap: () {},
              ),
              Row(
                children: [
                  Expanded(
                    child: SectionsItemsContainer(
                      image: "assets/images/iPhone15.png",
                      text: "جوالات",
                      onTap: () {},
                    ),
                  ),
                  SizedBox(width: 18.w),
                  Expanded(
                    child: SectionsItemsContainer(
                      image: "assets/images/laptop.png",
                      text: "لاب توب",
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              SectionsItemsContainer(
                image: 'assets/images/camel_bird.png',
                text: 'حيونات وطيور',
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
