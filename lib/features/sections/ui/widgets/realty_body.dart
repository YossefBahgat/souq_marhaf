import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_Morhaf/features/sections/ui/widgets/sections_items_body_container.dart';

import '../../../../core/theming/font_styles.dart';

class RealtyBody extends StatelessWidget {
  const RealtyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 20.w),
          child: Text("مرهف العقار", style: TextStyles.font22black),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              SectionsItemsContainer(
                image: 'assets/images/apartments_rent.png',
                text: 'شقق للايجار',
                onTap: () {},
              ),
              Row(
                children: [
                  Expanded(
                    child: SectionsItemsContainer(
                      image: "assets/images/house_sale.png",
                      text: "شقق للبيع",
                      onTap: () {},
                    ),
                  ),
                  SizedBox(width: 18.w),
                  Expanded(
                    child: SectionsItemsContainer(
                      image: "assets/images/floors_rent.png",
                      text: "أدوار للايجار",
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: SectionsItemsContainer(
                      image: "assets/images/villa_sale.png",
                      text: "فلل للبيع",
                      onTap: () {},
                    ),
                  ),
                  SizedBox(width: 18.w),
                  Expanded(
                    child: SectionsItemsContainer(
                      image: "assets/images/villa_rent.png",
                      text: "فلل  للايجار ",
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: SectionsItemsContainer(
                      image: "assets/images/building_sale.png",
                      text: "عمارة للبيع",
                      onTap: () {},
                    ),
                  ),
                  SizedBox(width: 18.w),
                  Expanded(
                    child: SectionsItemsContainer(
                      image: "assets/images/building_rent.png",
                      text: "عماره للايجار",
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: SectionsItemsContainer(
                      image: "assets/images/house_sale.png",
                      text: "بيوت للبيع",
                      onTap: () {},
                    ),
                  ),
                  SizedBox(width: 18.w),
                  Expanded(
                    child: SectionsItemsContainer(
                      image: "assets/images/house_rent.png",
                      text: "بيوت للايجار",
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: SectionsItemsContainer(
                      image: "assets/images/rest_sale.png",
                      text: "استراحات للبيع",
                      onTap: () {},
                    ),
                  ),
                  SizedBox(width: 18.w),
                  Expanded(
                    child: SectionsItemsContainer(
                      image: "assets/images/rest_rent.png",
                      text: "استراحات للايجار",
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              SectionsItemsContainer(
                image: 'assets/images/shop_rent.png',
                text: 'محلات للايجار',
                onTap: () {},
              ),
              Row(
                children: [
                  Expanded(
                    child: SectionsItemsContainer(
                      image: "assets/images/farm_sale.png",
                      text: "مزارع للبيع",
                      onTap: () {},
                    ),
                  ),
                  SizedBox(width: 18.w),
                  Expanded(
                    child: SectionsItemsContainer(
                      image: "assets/images/land_sale.png",
                      text: "اراضي للبيع",
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
