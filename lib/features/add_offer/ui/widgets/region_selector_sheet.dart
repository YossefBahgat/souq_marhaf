
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';
import '../../../../core/widgets/search_field.dart';
import '../../logic/brand_type_cubit.dart';
import 'city_selector_sheet.dart';

class RegionSelectorSheet extends StatefulWidget {
  final Function(String region) onSelect;

  const RegionSelectorSheet({
    super.key,
    required this.onSelect,
    required onRegionSelected

  });

  @override
  State<RegionSelectorSheet> createState() => _RegionSelectorSheetState();
}

class _RegionSelectorSheetState extends State<RegionSelectorSheet> {
  String? selectedRegion;

  String searchQuery = '';

  final List<String> syrianRegions = [
    "دمشق",
    "ريف دمشق",
    "حلب",
    "حمص",
    "اللاذقية",
    "طرطوس",
    "حماة",
    "درعا",
    "السويداء",
    "دير الزور",
    "الحسكة",
    "الرقة",
    "إدلب",
    "القنيطرة",
  ];

  final Map<String, List<String>> citiesByRegion = {
    "دمشق": ["المزة", "المالكي", "كفرسوسة"],
    "ريف دمشق": ["جرمانا", "دوما", "صحنايا"],
    "حلب": ["السليمانية", "الجميلية", "حلب القديمة"],
    "حمص": ["بابا عمرو", "الوعر", "القصور"],
    "اللاذقية": ["مشروع الزراعة", "الصليبة", "الرمل الجنوبي"],
    "طرطوس": ["المدينة", "بانياس", "صافيتا"],
    "حماة": ["القصور", "الحميدية", "حي النصر"],
    "درعا": ["درعا البلد", "الصنمين", "ازرع"],
    "السويداء": ["شهبا", "صلخد", "القريا"],
    "دير الزور": ["الميادين", "البوكمال", "القصور"],
    "الحسكة": ["القامشلي", "رأس العين", "المالكية"],
    "الرقة": ["الطبقة", "تل أبيض", "عين عيسى"],
    "إدلب": ["سلقين", "معرة النعمان", "جسر الشغور"],
    "القنيطرة": ["خان أرنبة", "جباتا الخشب", "الحميدية"],
  };

  @override
  Widget build(BuildContext context) {
    final filteredRegions = syrianRegions
        .where((region) => region.contains(searchQuery))
        .toList();

    return Directionality(
      textDirection: TextDirection.rtl,
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.r)),
        child: Container(
          color: ColorsManager.white,
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text("اختر المحافظة", style: TextStyles.font25black),
                SizedBox(height: 20.h),
                SearchField(
       //           hint: 'بحث عن المحافظة',
                  onChanged: (val) => setState(() => searchQuery = val.trim()),
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 23.w),
                  child: Column(
                    children: filteredRegions.map((region) {
                      bool isSelected = selectedRegion == region;
                      return InkWell(
                        onTap: () {
                          setState(() => selectedRegion = region);
                          Navigator.pop(context);
                          context.read<AddOfferCubit>().selectRegion(region);
                          widget.onSelect(region);
                          showModalBottomSheet(
                            context: context,
                            backgroundColor: Colors.transparent,
                            builder: (_) => CitySelectorSheet(
                              region: region,
                              cities: citiesByRegion[region] ?? [],
                              onSelect: (city) {
                                // التعامل مع المدينة
                              },
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  isSelected
                                      ? Icons.check_box
                                      : Icons.check_box_outline_blank,
                                  color: ColorsManager.fontGreen,
                                ),
                                SizedBox(width: 20.w),
                                Text(region, style: TextStyles.font25black),
                              ],
                            ),
                            Divider(height: 30.h),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
