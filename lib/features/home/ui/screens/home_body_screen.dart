import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_marhaf/features/home/ui/widgets/category_widget.dart';
import 'package:souq_marhaf/features/home/ui/widgets/filter_widget.dart';
import 'package:souq_marhaf/features/home/ui/widgets/realty_row.dart';
import 'package:souq_marhaf/features/home/ui/widgets/scope.dart';
import 'package:souq_marhaf/features/home/ui/widgets/services_row.dart';
import 'package:souq_marhaf/features/home/ui/widgets/sheep_animal_row.dart';
import 'package:souq_marhaf/features/home/ui/widgets/story_widget.dart';
import 'package:souq_marhaf/features/home/ui/widgets/supplies_row.dart';
import 'package:souq_marhaf/features/home/ui/widgets/toyota_car_row.dart';
import 'package:souq_marhaf/features/home/ui/widgets/watch_supplies_row.dart';

import '../../../../core/routing/app_router.dart';
import '../../../../core/routing/routes.dart';
import '../../../product_details/ui/product_details_screen.dart';
import '../../../product_details/ui/widgets/product_details_args.dart';
import 'animals_birds_row.dart';
import 'business_jobs_row.dart';
import 'devices_row.dart';
import 'every_marhaf_row.dart';
import 'furniture_row.dart';
import 'items_on_display.dart';
import 'cars_type_row.dart';
import 'jobs_row.dart';
import 'mobiles_devices_row.dart';

class HomeBodyScreen extends StatefulWidget {
  const HomeBodyScreen({super.key});

  @override
  State<HomeBodyScreen> createState() => _HomeBodyScreenState();
}

class _HomeBodyScreenState extends State<HomeBodyScreen> {
  String selectedCategory = "";
  String selectedBrand = "الكل";

  void onCategorySelected(String category) {
    setState(() {
      selectedCategory = category;
      selectedBrand = "الكل";
    });
  }

  void onBrandSelected(String brand) {
    setState(() {
      selectedBrand = brand;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
     //   StoryWidget(),
        CategoryWidget(onCategorySelected: onCategorySelected),

        if (selectedCategory.isNotEmpty)
          ...[
            if (selectedCategory == "مرهف السيارات")
              CarsTypeRow(
                selectedBrand: selectedBrand,
                onBrandSelected: onBrandSelected,
              ),
            if (selectedCategory == "مرهف العقار")
              RealtyRow(
                selectedBrand: selectedBrand,
                onBrandSelected: onBrandSelected,
              ),
            if (selectedCategory == "مرهف الاجهزة")
              DevicesRow(
                selectedBrand: selectedBrand,
                onBrandSelected: onBrandSelected,
              ),
            if (selectedCategory == "حيوانات وطيور")
              AnimalsBirdsRow(
                selectedBrand: selectedBrand,
                onBrandSelected: onBrandSelected,
              ),
            if (selectedCategory == "وظائف")
              JobsRow(
                selectedBrand: selectedBrand,
                onBrandSelected: onBrandSelected,
              ),
            if (selectedCategory == "اثاث")
              FurnitureRow(
                selectedBrand: selectedBrand,
                onBrandSelected: onBrandSelected,
              ),
            if (selectedCategory == "مستلزمات شخصية")
              SuppliesRow(
                selectedBrand: selectedBrand,
                onBrandSelected: onBrandSelected,
              ),
            if (selectedCategory == "خدمات")
              ServicesRow(
                selectedBrand: selectedBrand,
                onBrandSelected: onBrandSelected,
              ),
            if (selectedCategory == "الكل")
              EveryMarhafRow(
                selectedBrand: selectedBrand,
                onBrandSelected: onBrandSelected,
              ),
          ],

        if (selectedBrand == "تويوتا") ToyotaCarRow(),
        if (selectedBrand == "جوالات") MobilesDevicesRow(),
        if (selectedBrand == "وظائف ادارية") BusinessJobsRow(),
        if (selectedBrand == "ساعات") WatchSuppliesRow(),
        if (selectedBrand == "غنم") SheepAnimalRow(),

        SizedBox(height: 20.h),
        FilterWidget(),
        Scope(),
        ItemsOnDisplay(
          title: "تميزي بأجمل جلابيات و مخاوير من اريا عرض رمضان",
          username: "zaky200",
          userImagePath: "assets/images/user.png",
          timeText: "الان",
          locationText: "حلب",
          productImagePath: "assets/images/dress.png",
          onTap: () {
            Navigator.pushNamed(
              context,
              Routes.productDetailsScreen,
              arguments: ProductDetailsArgs(
                title: "تميزي بأجمل جلابيات و مخاوير من اريا عرض رمضان",
                username: "zaky200",
                userImagePath: "assets/images/user.png",
                timeText: "الان",
                locationText: "حلب",
                productImagePath: "assets/images/dress.png",
              ),
            );
          },

        ),

        ItemsOnDisplay(
          title: "تميزي بأجمل جلابيات و مخاوير من اريا عرض رمضان",
          username: "zaky200",
          userImagePath: "assets/images/user.png",
          timeText: "الان",
          locationText: "حلب",
          productImagePath: "assets/images/dress.png",
          onTap: () {},
        ),
        ItemsOnDisplay(
          title: "تميزي بأجمل جلابيات و مخاوير من اريا عرض رمضان",
          username: "zaky200",
          userImagePath: "assets/images/user.png",
          timeText: "الان",
          locationText: "حلب",
          productImagePath: "assets/images/dress.png",
          onTap: () {},
        ),

      ],
    );
  }
}
