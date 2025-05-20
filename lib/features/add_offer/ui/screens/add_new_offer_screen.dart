import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_Morhaf/core/routing/routes.dart';
import 'package:souq_Morhaf/core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../widgets/bottom_sheet_brand.dart';
import '../widgets/phone_log_in_screen.dart';
import '../widgets/offer_item_widget.dart';

class AddNewOfferScreen extends StatelessWidget {
  const AddNewOfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(text: "اضافة عرض جديد"),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.w, vertical: 30.h),
              child: Text("اختر نوع العرض", style: TextStyles.font22black),
            ),
            OfferItemWidget(
              text: 'عرض مرهف السيارات',
              image: 'assets/images/car_logo.png',
              onTap: () {
                showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40.r),
                    ),
                  ),
                  backgroundColor: ColorsManager.white,
                  context: context,
                  builder: (context) {
                    return BottomSheetBrand();
                  },
                );
              },
            ),
            Divider(color: ColorsManager.black),
            OfferItemWidget(
              text: 'عرض مرهف العقار',
              image: 'assets/images/realty.png',
              onTap: () {
              },
            ),
            Divider(color: ColorsManager.black),
            OfferItemWidget(
              text: 'عرض مرهف الأجهزة',
              image: 'assets/images/devices.png',
              onTap: () {},
            ),
            Divider(color: ColorsManager.black),
            OfferItemWidget(
              text: 'عرض مواشي وحيوانات وطيور',
              image: 'assets/images/animals.png',
              onTap: () {},
            ),
            Divider(color: ColorsManager.black),
            OfferItemWidget(
              text: 'عرض اطعمة ومشروبات',
              image: 'assets/images/drinks.png',
              onTap: () {},
            ),
            Divider(color: ColorsManager.black),
            OfferItemWidget(
              text: 'عرض مكتبة وفنون',
              image: 'assets/images/library.png',
              onTap: () {},
            ),
            Divider(color: ColorsManager.black),
            OfferItemWidget(
              text: 'عرض اثاث',
              image: 'assets/images/furniture.png',
              onTap: () {},
            ),
            Divider(color: ColorsManager.black),
            OfferItemWidget(
              text: 'عرض مستلزمات شخصية',
              image: 'assets/images/supplies.png',
              onTap: () {},
            ),
            Divider(color: ColorsManager.black),
            OfferItemWidget(
              text: 'عرض خدمات',
              image: 'assets/images/services.png',
              onTap: () {},
            ),
            Divider(color: ColorsManager.black),
            OfferItemWidget(
              text: 'عرض وظائف',
              image: 'assets/images/jobs.png',
              onTap: () {},
            ),
            Divider(color: ColorsManager.black),
            OfferItemWidget(
              text: 'عرض برمجة وتصاميم',
              image: 'assets/images/programming.png',
              onTap: () {},
            ),
            Divider(color: ColorsManager.black),
            OfferItemWidget(
              text: 'عرض صيد ورحلات',
              image: 'assets/images/hunting.png',
              onTap: () {},
            ),
            Divider(color: ColorsManager.black),
            OfferItemWidget(
              text: 'عرض كل مرهف',
              image: 'assets/images/any_morhaf.png',
              onTap: () {},
            ),
            Divider(color: ColorsManager.black),
          ],
        ),
      ),
    );
  }
}
