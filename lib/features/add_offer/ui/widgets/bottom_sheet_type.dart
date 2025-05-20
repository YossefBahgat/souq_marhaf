import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:souq_Morhaf/core/theming/font_styles.dart';
import '../../../../core/theming/colors.dart';
import '../../logic/brand_type_cubit.dart';
import 'bottom_sheet_model.dart';

class BottomSheetType extends StatefulWidget {
  final String brand;
  final List<String> types;

  const BottomSheetType({
    super.key,
    required this.brand,
    required this.types,
  });

  @override
  State<BottomSheetType> createState() => _BottomSheetTypeState();
}

class _BottomSheetTypeState extends State<BottomSheetType> {
  String? selectedType;
  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    final filteredTypes = widget.types
        .where((type) => type.contains(searchQuery))
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
         //     mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 10.h),
                Row(
                  children: [
                    const Spacer(flex: 3),
                    Text("أنواع ${widget.brand}", style: TextStyles.font25black),
                    const Spacer(flex: 2),
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.close),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 23.w),
                  child: TextField(
                    style: TextStyles.font25black,
                    onChanged: (val) => setState(() => searchQuery = val.trim()),
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 5.h),
                      hintText: "بحث عن النوع",
                      hintStyle: TextStyles.font25black,
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: Icon(
                          Icons.search,
                          size: 35.sp,
                          color: ColorsManager.black.withOpacity(0.51),
                        ),
                      ),
                      suffixIconConstraints: BoxConstraints(
                        minHeight: 24.h,
                        minWidth: 24.w,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.r),
                        borderSide: BorderSide(
                          color: ColorsManager.black.withOpacity(0.73),
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.r),
                        borderSide: const BorderSide(color: ColorsManager.black, width: 1),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 23.w),
                  child: Column(
                    children: filteredTypes.map((type) {
                      return buildTypeRow(type, () {
                        setState(() => selectedType = type);
                        context.read<AddOfferCubit>().selectType(type);
                        print('✅ النوع المحدد: $selectedType'); // أضف هذا السطر
                        Navigator.pop(context);
                        showModalBottomSheet(
                          context: context,
                          backgroundColor: Colors.transparent,
                          builder: (_) => const BottomSheetModel(),
                        );
                      });
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

  Widget buildTypeRow(String label, VoidCallback onTap) {
    bool isSelected = selectedType == label;
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 5.w),
              Icon(
                isSelected ? Icons.check_box : Icons.check_box_outline_blank,
                color: ColorsManager.fontGreen,
              ),
              SizedBox(width: 20.w),
              Text(label, style: TextStyles.font25black),
            ],
          ),
          Divider(height: 30.h),
        ],
      ),
    );
  }
}
