import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';

class FilterWidget extends StatefulWidget {
  const FilterWidget({super.key});

  @override
  State<FilterWidget> createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  final Map<String, List<String>> regionToTowns = {
    'كل المناطق': ['كل المدن'],
    'دمشق': [
      'كل المدن',
      'التل',
      'دوما',
      'حرستا',
      'عربين',
      'داريا',
      'معضمية الشام',
      'قطنا',
      'الزبدانى',
      'يبردو',
      'النبك',
      'الكسوره',
      'صدنايا',
      'جيرود',
    ],
    'ريف دمشق': ['كل المدن'],
    'حلب': ['كل المدن', 'حلب الجديدة', 'السكري', 'سيف الدولة'],
    'حمص': ['كل المدن', 'بابا عمرو', 'الانشاءات'],
    'حماه': ['كل المدن', 'حي النصر', 'الحميدية'],
    'اللاذقيه': ['كل المدن', 'مشقيتا', 'الصليبة'],
    'طرطوس': ['كل المدن', 'بانياس', 'صافيتا'],
  };

  String selectedRegion = 'كل المناطق';
  String selectedTown = 'كل المدن';

  @override
  Widget build(BuildContext context) {
    List<String> townItems = regionToTowns[selectedRegion]!;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _buildDropdown(
              value: selectedRegion,
              items: regionToTowns.keys.toList(),
              onChanged: (value) {
                setState(() {
                  selectedRegion = value!;
                  selectedTown = regionToTowns[selectedRegion]!.first;
                });
              },
            ),
            SizedBox(width: 10.w),
            _buildDropdown(
              value: selectedTown,
              items: townItems,
              onChanged: (value) {
                setState(() {
                  selectedTown = value!;
                });
              },
            ),
            SizedBox(width: 10.w),
            _buildFilterDropdown(),

            SizedBox(width: 10.w),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              height: 65.h,
              width: 51.w,
              decoration: BoxDecoration(
                color: ColorsManager.backgroundFilter,
                borderRadius: BorderRadius.circular(23.r),
              ),
              child: Image.asset("assets/images/square.png"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDropdown({
    required String value,
    required List<String> items,
    required void Function(String?) onChanged,
  }) {
    return Row(
      children: [
        Container(
          height: 70.h,
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          decoration: BoxDecoration(
            color: ColorsManager.backgroundFilter,
            borderRadius: BorderRadius.circular(21.r),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: value,
              icon: const Icon(Icons.keyboard_arrow_down, color: Colors.indigo),
              dropdownColor: ColorsManager.appBarGreen,
              borderRadius: BorderRadius.circular(20.r),
              style: TextStyles.font22green,
              alignment: Alignment.center,
              //  isDense: true,
              selectedItemBuilder: (BuildContext context) {
                return items.map((item) {
                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [Text(item)],
                  );
                }).toList();
              },
              items:
                  items.map((item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: Column(
                        children: [
                          Text(item),
                          Divider(color: Colors.black, thickness: 1),
                        ],
                      ),
                    );
                  }).toList(),
              onChanged: onChanged,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFilterDropdown() {
    List<String> filterOptions = ['الأحدث', 'الأقدم','فيديوهات فقط'];

    String selectedFilter = 'تصفية';

    return Container(
      height: 70.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        color: ColorsManager.backgroundFilter,
        borderRadius: BorderRadius.circular(21.r),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: null,
          // null عشان نكتب نص ثابت "تصفية"
          hint: Row(
            children: [
              Icon(Icons.filter_alt_sharp, color: Colors.indigo),
              SizedBox(width: 5.w),
              Text('تصفية', style: TextStyles.font22green),
            ],
          ),
          icon: Icon(Icons.keyboard_arrow_down, color: Colors.indigo),
          dropdownColor: ColorsManager.appBarGreen,
          borderRadius: BorderRadius.circular(20.r),
          style: TextStyles.font22green,
          items:
              filterOptions.map((option) {
                return DropdownMenuItem<String>(
                  value: option,
                  child: Text(option),
                );
              }).toList(),
          onChanged: (value) {
            // هنا ممكن تعمل setState وتحفظ الاختيار حسب الحاجة
            if (kDebugMode) {
              print('تم اختيار: $value');
            }
          },
        ),
      ),
    );
  }
}