import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_Morhaf/core/theming/colors.dart';
import 'package:souq_Morhaf/features/rating/ui/screens/rating_screen.dart';
import 'package:souq_Morhaf/features/product_details/ui/widgets/report_dialog.dart';
import 'package:souq_Morhaf/features/product_details/ui/widgets/settings_option.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/font_styles.dart';
import '../../../seller_details/ui/widgets/block_reason_dialog.dart';

class MoreSettingsContainer extends StatelessWidget {
  const MoreSettingsContainer({
    super.key,
    required this.userImagePath,
    required this.username,
  });

  final String userImagePath;
  final String username;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 400.h),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.r),
      ),
      backgroundColor: ColorsManager.white,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "المزيد من الإعدادات",
                    style: TextStyles.font25greenSemibold,
                  ),
                  IconButton(
                    icon: const Icon(Icons.close, size: 28),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
        //      Divider(color: Colors.grey[300], thickness: 1),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    Routes.ratingScreen,
                    arguments: {
                      'userImagePath': userImagePath,
                      'username': username,
                    },
                  );
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.h),
                  child: SettingsOption(icon: Icons.star, text: "تقييم البائع"),
                ),
              ),
         //     Divider(color: Colors.grey[300],),
              InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => const ReportDialog(),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.h),
                  child: SettingsOption(icon: Icons.flag, text: "إبلاغ"),
                ),
              ),
       //       Divider(color: Colors.grey[300], thickness: 1),
          //    SizedBox(height: 10.h),
              InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => const BlockReasonDialog(),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.h),
                  child: SettingsOption(icon: Icons.block, text: "حظر"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
