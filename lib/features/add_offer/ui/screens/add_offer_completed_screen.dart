import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_Morhaf/core/theming/colors.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/font_styles.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_text_button.dart';
import '../../logic/brand_type_cubit.dart';
import '../../logic/brand_type_state.dart';
import '../widgets/auth_offer_guard.dart';
import '../widgets/section_info.dart';
import '../widgets/toggle_input_field.dart';

class AddOfferCompletedScreen extends StatefulWidget {
  const AddOfferCompletedScreen({super.key});

  @override
  State<AddOfferCompletedScreen> createState() =>
      _AddOfferCompletedScreenState();
}

class _AddOfferCompletedScreenState extends State<AddOfferCompletedScreen> {
  bool _isTogglePrice = false;
  bool _isToggleNum = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddOfferCubit, AddOfferState>(
      listener: (context, state) {
        if (state is AddOfferSuccess) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text('تم إضافة العرض بنجاح')));
          Navigator.pop(context);
        } else if (state is AddOfferFailure) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('خطأ: ${state.error}')));
        }
      },
      builder: (context, state) {
        final cubit = context.watch<AddOfferCubit>();
        return Scaffold(
          appBar: const CustomAppBar(text: 'اضافة عرض'),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                SectionInfo(
                  title: "موقع السلعة",
                  subtitle: '${cubit.region} / ${cubit.city }',
                ),
                Divider(height: 40.h, color: Colors.black),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 35.w),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("موضوع", style: TextStyles.font22blackSemibold),
                      TextField(
                        style: TextStyles.font22black,
                        controller: cubit.subjectController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 0),
                          hintText: 'عنوان العرض',
                          hintStyle: TextStyles.font20gray,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(height: 0, color: Colors.black),
                SizedBox(height: 20.h),
                SectionInfo(
                  title: "القسم",
                  subtitle:
                      '${cubit.brand } / ${cubit.type } / ${cubit.model }',
                ),
                Divider(height: 40.h, color: Colors.black),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22.w),
                  child: Text(
                    "اكتب معلومات إضافية :",
                    style: TextStyles.font23gray,
                  ),
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22.w),
                  child: TextField(
                    controller: cubit.additionalInfoController,
                    textAlignVertical: TextAlignVertical.top,
                    maxLines: 6,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10.h,
                        horizontal: 16.w,
                      ),
                      filled: true,
                      fillColor: ColorsManager.backContainerGray,
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                ToggleInputField(
                  label: "السعر",
                  hint: "ليره سوريه",
                  controller: cubit.priceController,
                  toggleValue: _isTogglePrice,
                  onToggleChanged: (value) {
                    setState(() {
                      _isTogglePrice = value;
                    });
                  },
                ),
         //       SizedBox(height: 18.h),
                ToggleInputField(
                  label: "الجوال",
                  hint: "+96327864100",
                  controller: cubit.phoneController,
                  toggleValue: _isToggleNum,
                  onToggleChanged: (value) {
                    setState(() {
                      _isToggleNum = value;
                    });
                  },
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Text(
                    "عند اخفاءها سيتواصل معك الأعضاء عن طريق الرسائل الخاصة في مرهف",
                    style: TextStyles.font14green,
                  ),
                ),
                SizedBox(height: 25.h),
                Center(
                  child: CustomTextButton(
                    text: 'إضافة',
                    onPressed: () async {
                      final cubit = context.read<AddOfferCubit>();
                      final result = await checkAuthAndSubmitOffer(
                        context: context,
                        region: cubit.region,
                        city: cubit.city,
                        brand: cubit.brand,
                        type: cubit.type,
                        model: cubit.model,
                        additionalInfo: cubit.additionalInfoController.text,
                        price: cubit.priceController.text,
                        phoneNumber: cubit.phoneController.text,
                        images: cubit.images,
                        subject:  cubit.subjectController.text,
                      );
                      if (result != null) {
                        ScaffoldMessenger.of(
                          context,
                        ).showSnackBar(SnackBar(content: Text(result)));
                        if (result.contains("تم")) {
                          await Future.delayed(Duration(seconds: 2));
                          Navigator.pushNamed(context, Routes.homeScreen);
                        }
                      }
                    },
                  ),
                ),
                SizedBox(height: 20.h),

              ],
            ),
          ),
        );
      },
    );
  }
}
