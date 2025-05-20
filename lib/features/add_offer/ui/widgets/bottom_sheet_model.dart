import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_Morhaf/core/theming/font_styles.dart';
import '../../../../core/theming/colors.dart';
import '../../logic/brand_type_cubit.dart';
import 'fee_agreement_bottom_sheet.dart';

class BottomSheetModel extends StatefulWidget {
  const BottomSheetModel({super.key});

  @override
  State<BottomSheetModel> createState() => _BottomSheetModelState();
}

class _BottomSheetModelState extends State<BottomSheetModel> {
  String? selectedModel;
  String searchQuery = '';

  final List<String> models = List.generate(46, (index) => (2025 - index).toString());

  @override
  Widget build(BuildContext context) {
    final filteredModels = models
        .where((model) => model.contains(searchQuery))
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
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 10.h),
                Row(
                  children: [
                    const Spacer(flex: 3),
                    Text("الموديلات من 1980 إلى 2025", style: TextStyles.font25black),
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
                      hintText: "بحث عن الموديل",
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
                    children: filteredModels.map((model) {
                      return buildModelRow(model, () {
                        Navigator.pop(context);
                        context.read<AddOfferCubit>().selectModel(model);
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          backgroundColor: ColorsManager.white,
                          builder: (_) =>  FeeAgreementBottomSheet( onConfirmed: () {
                            Navigator.pop(context);
                          },),
                        );
                        setState(() => selectedModel = model);
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

  Widget buildModelRow(String label, VoidCallback onTap) {
    bool isSelected = selectedModel == label;
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
