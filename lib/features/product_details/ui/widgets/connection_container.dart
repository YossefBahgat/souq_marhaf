import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_Morhaf/core/theming/colors.dart';
import 'package:souq_Morhaf/features/product_details/ui/widgets/settings_option.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/theming/font_styles.dart';

class ConnectionContainer extends StatelessWidget {
  const ConnectionContainer({super.key, required this.phoneNumber});

  final String phoneNumber;

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri url = Uri(scheme: 'tel', path: phoneNumber);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 360.h),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.r),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("تواصل", style: TextStyles.font25greenSemibold),
                IconButton(
                  icon: Icon(Icons.close, size: 30),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            TextButton(
              onPressed: () {
                 _makePhoneCall(phoneNumber);
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: SettingsOption(icon: Icons.call, text: phoneNumber),
              ),
            ),
            Divider(color: ColorsManager.gray, thickness: 1.9, height: 1.h),
            TextButton(
              onPressed: () {},
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: SettingsOption(icon: Icons.message, text: "مراسلة"),
              ),
            ),
            Divider(color: ColorsManager.gray, thickness: 1.9, height: 1.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.r),
                color: ColorsManager.warningGreen,
              ),
              child: Row(
                children: [
                  Icon(Icons.warning_rounded, color: ColorsManager.fontGreen),
                  Expanded(
                    child: Text(textAlign: TextAlign.center,
                      "تعاملك يجب أن يكون مع المعلن فقط وجود طرف ثالث قد يعني الاحتيال .",
                      style: TextStyles.font17black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
