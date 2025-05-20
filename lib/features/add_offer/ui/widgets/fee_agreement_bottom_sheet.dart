import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';
import '../../../../core/widgets/checkbox_widget.dart';
import '../../../rating/ui/widgets/continue_button_widget.dart';
import 'region_selector_sheet.dart';

class FeeAgreementBottomSheet extends StatefulWidget {
  final VoidCallback onConfirmed;

  const FeeAgreementBottomSheet({super.key, required this.onConfirmed});

  @override
  State<FeeAgreementBottomSheet> createState() => _FeeAgreementBottomSheetState();
}

class _FeeAgreementBottomSheetState extends State<FeeAgreementBottomSheet> {
  bool isConfirmed = false;

  bool get isFormValid => isConfirmed;

  void _showRegionSelector() {
    showModalBottomSheet(
      context: context,
      backgroundColor: ColorsManager.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.r)),
      ),
      builder: (context) => RegionSelectorSheet(
        onRegionSelected: (region) {
            widget.onConfirmed();
        }, onSelect: (String region) {  },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 60.w,
                height: 5.h,
                decoration: BoxDecoration(
                  color: ColorsManager.gray,
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            const AgreementContent(),
            CheckboxWidget(
              isConfirmed: isConfirmed,
              onChanged: (value) => setState(() => isConfirmed = value!),
              text: '*اتعهد بالألترام في انظمة الهيئه العامة للعقار',
            ),
            SizedBox(height: 33.h),
            Text(
              "المنتجات العقارية والخدمات العقارية لايوجد عليها عمولة",
              style: TextStyles.font25black,
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 120.w),
              child: ContinueButtonWidget(
                isFormValid: isFormValid,
                onPressed: isFormValid ? _showRegionSelector : null,
              ),
            ),
            SizedBox(height: 100.h),
          ],
        ),
      ),
    );
  }
}
class AgreementContent extends StatelessWidget {
  const AgreementContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(child: Text("إتفاقية الرسوم", style: TextStyles.font25black)),
        Divider(color: ColorsManager.black, height: 50.h),
        Text(
          """بسم الله الرحمن الرحيم
قال الله تعالي : “وأوفوا بعهد الله إذا عاهدتم ولاتنقضوا الأيمان بعد توكيدها وقد جعلتم الله عليكم كفيلا” صدق الله العظيم""",
          style: TextStyles.font25black,
        ),
        Divider(color: ColorsManager.black, height: 30.h),
      ],
    );
  }
}
