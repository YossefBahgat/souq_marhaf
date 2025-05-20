
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';
import '../../../../core/widgets/search_field.dart';
import '../../logic/brand_type_cubit.dart';
import 'add_photo.dart';

class CitySelectorSheet extends StatefulWidget {
  final String region;
  final List<String> cities;
  final Function(String city) onSelect;

  const CitySelectorSheet({
    super.key,
    required this.region,
    required this.cities,
    required this.onSelect,
  });

  @override
  State<CitySelectorSheet> createState() => _CitySelectorSheetState();
}

class _CitySelectorSheetState extends State<CitySelectorSheet> {
  String? selectedCity;
  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    final filteredCities = widget.cities
        .where((city) => city.contains(searchQuery))
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
                Text("اختر المدينة", style: TextStyles.font25black),
                SizedBox(height: 20.h),
                SearchField(
          //        hint: 'بحث عن المدينة',
                  onChanged: (val) => setState(() => searchQuery = val.trim()),
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 23.w),
                  child: Column(
                    children: filteredCities.map((city) {
                      bool isSelected = selectedCity == city;
                      return InkWell(
                        onTap: () {
                          setState(() => selectedCity = city);
                          Navigator.pop(context);
                          context.read<AddOfferCubit>().selectCity(city);
                          widget.onSelect(city);
                          showModalBottomSheet(
                            context: context,
                            backgroundColor: Colors.white,
                            isScrollControlled: true,
                            builder: (_) => const AddPhoto(),
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
                                Text(city, style: TextStyles.font25black),
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
