import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_Morhaf/features/rating/ui/widgets/rating_dialog.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';
import 'confirm_purchase_sheet.dart';

class AddRatingButton extends StatelessWidget {
  final String userImagePath;
  final String username;
  final VoidCallback onConfirmed;

  const AddRatingButton({
    super.key,
    required this.userImagePath,
    required this.username,
    required this.onConfirmed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 50.w),
      child: ElevatedButton(
        onPressed: () => _onPressed(context),
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorsManager.buttonGreen,
          minimumSize: Size(double.infinity, 70.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.r),
          ),
        ),
        child: Text("إضافة تقييم", style: TextStyles.font25black),
      ),
    );
  }

  void _onPressed(BuildContext context) {
    final rootContext = context;

    showModalBottomSheet(
      context: rootContext,
      backgroundColor: ColorsManager.white,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      builder:
          (bottomSheetContext) => ConfirmPurchaseSheet(
            username: username,
            onConfirmed: () {
              Navigator.pop(bottomSheetContext);
              _showRatingDialog(rootContext);
            },
            rootContext: rootContext,
          ),
    );
  }
  void _showRatingDialog(BuildContext context) {
    showDialog(
      context: context,
      builder:
          (context) => RatingDialog(
            userImagePath: userImagePath,
            username: username,
            onConfirmed: onConfirmed,
          ),
    );
  }
}
