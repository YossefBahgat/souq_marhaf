import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_Morhaf/features/sections/ui/widgets/sections_items_body_container.dart';

import '../../../../core/theming/font_styles.dart';

class FurnitureBody extends StatelessWidget {
  const FurnitureBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 20.w),
          child: Text("اثاث", style: TextStyles.font22black),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              SectionsItemsContainer(
                image: 'assets/images/board.png',
                text: 'مجالس ومفروشات',
                onTap: () {},
              ),
              Row(
                children: [
                  Expanded(
                    child: SectionsItemsContainer(
                      image: "assets/images/tables.png",
                      text: "طاولات",
                      onTap: () {},
                    ),
                  ),
                  SizedBox(width: 18.w),
                  Expanded(
                    child: SectionsItemsContainer(
                      image: "assets/images/cabinets.png",
                      text: "خزائن ودواليب",
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: SectionsItemsContainer(
                      image: "assets/images/decor.png",
                      text: "تحف وديكور",
                      onTap: () {},
                    ),
                  ),
                  SizedBox(width: 18.w),
                  Expanded(
                    child: SectionsItemsContainer(
                      image: "assets/images/hardware.png",
                      text: "أدوات منزلية",
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: SectionsItemsContainer(
                      image: "assets/images/outdoor _furniture.png",
                      text: "اثاث خارجي",
                      onTap: () {},
                    ),
                  ),
                  SizedBox(width: 18.w),
                  Expanded(
                    child: SectionsItemsContainer(
                      image: "assets/images/beds.png",
                      text: "أسرة ومراتب",
                      onTap: () {},
                    ),
                  ),
                ],
              ),

              SectionsItemsContainer(
                image: 'assets/images/desk.png',
                text: 'أثاث مكتبي',
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
