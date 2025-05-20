import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_Morhaf/core/theming/font_styles.dart';
import 'package:souq_Morhaf/core/widgets/search_field.dart';
import 'package:souq_Morhaf/features/add_offer/ui/widgets/bottom_sheet_type.dart';
import '../../../../core/theming/colors.dart';
import '../../logic/brand_type_cubit.dart';
import 'brand_list.dart';
import 'brand_header.dart';

class BottomSheetBrand extends StatefulWidget {
  const BottomSheetBrand({super.key});

  @override
  State<BottomSheetBrand> createState() => _BottomSheetBrandState();
}

class _BottomSheetBrandState extends State<BottomSheetBrand> {
  String? selectedBrand;
  String searchQuery = '';

  final Map<String, List<String>> brandTypes = {
    "تويوتا": ["كورولا", "كامري", "راف4","لاند كروزر", "راش", "فورتشنر"],
    "هيونداي": ["النترا", "توسان", "سوناتا","فيرنا", "اكسنت", "جيتس"],
    "فورد": ["فيستا", "فوكس", "فيوجن"],
    "نيسان": ["صني", "قشقاي", "باترول"],
    "شيفرولية": ["أفيو", "أوبترا", "كابتيفا"],
    "كيا": ["سيراتو", "سبورتاج", "بيكانتو"],
    "بي إم دبليو": ["الفئة الثالثة", "X5", "X6"],
    "مرسيدس": ["C Class", "E Class", "GLC"],
    "جيلي": ["كول راي", "أزكارا", "بين راي"],
    "مازدا": ["Mazda 3", "CX-5", "Mazda 6"],
    "ميتسوبيشي": ["لانسر", "أوتلاندر", "باچيرو"],
    "دودج": ["تشارجر", "تشالنجر", "دورانجو"],
    "هوندا": ["سيفيك", "أكورد", "CR-V"],
    "جي ام سي": ["تيرين", "أكاديا", "يوكن"],
    "لكزس": ["IS", "RX", "NX"],
    "جنسس": ["G70", "G80", "GV80"],
    "تسلا": ["Model S", "Model 3", "Model X"],
    "رينو": ["كليو", "داستر", "ميجان"],
    "قطع غيار وملحقات": [],
  };

  late final List<String> allBrands = brandTypes.keys.toList();

  @override
  Widget build(BuildContext context) {
    final filteredBrands = allBrands.where((b) => b.contains(searchQuery)).toList();

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
                const BrandHeader(),
                SizedBox(height: 20.h),
                SearchField(
                  onChanged: (val) => setState(() => searchQuery = val.trim()),
                ),
                SizedBox(height: 20.h),
                BrandList(
                  brands: filteredBrands,
                  selectedBrand: selectedBrand,
                  onSelect: (brand) {
                    setState(() => selectedBrand = brand);
                    Navigator.pop(context);
                    context.read<AddOfferCubit>().selectBrand(brand);
                    showModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.transparent,
                      builder: (_) => BottomSheetType(
                        brand: brand,
                        types: brandTypes[brand] ?? [],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
