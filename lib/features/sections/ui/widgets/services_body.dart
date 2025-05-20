import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_Morhaf/features/sections/ui/widgets/sections_items_body_container.dart';

import '../../../../core/theming/font_styles.dart';

class ServicesBody extends StatelessWidget {
  const ServicesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 20.w),
          child: Text("خدمات", style: TextStyles.font22black),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              SectionsItemsContainer(
                image: 'assets/images/cleanning.png',
                text: 'خدمات نظافة',
                onTap: () {},
              ),
              Row(
                children: [
                  Expanded(
                    child: SectionsItemsContainer(
                      image: "assets/images/trucks.png",
                      text: "خدمات نقل العفش",
                      onTap: () {},
                    ),
                  ),
                  SizedBox(width: 18.w),
                  Expanded(
                    child: SectionsItemsContainer(
                      image: "assets/images/delivary.png",
                      text: "خدمات توصيل",
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: SectionsItemsContainer(
                      image: "assets/images/shipping.png",
                      text: "خدمات شحن",
                      onTap: () {},
                    ),
                  ),
                  SizedBox(width: 18.w),
                  Expanded(
                    child: SectionsItemsContainer(
                      image: "assets/images/imprint.png",
                      text: "خدمات تعقيب",
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              SectionsItemsContainer(
                image: 'assets/images/other_services.png',
                text: 'خدمات اخري',
                onTap: () {},
              ),
              SectionsItemsContainer(
                image: 'assets/images/shopping.png',
                text: 'خدمات الشراء من المواقع',
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
