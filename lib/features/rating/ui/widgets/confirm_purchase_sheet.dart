import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';
import 'oath_text_widget.dart';
import '../../../../core/widgets/checkbox_widget.dart';
import 'question_widget.dart';
import 'comment_field_widget.dart';
import 'continue_button_widget.dart';

class ConfirmPurchaseSheet extends StatefulWidget {
  final VoidCallback onConfirmed;
  final String username;
  final BuildContext rootContext;

  const ConfirmPurchaseSheet({
    super.key,
    required this.onConfirmed,
    required this.username,
    required this.rootContext,
  });

  @override
  State<ConfirmPurchaseSheet> createState() => _ConfirmPurchaseSheetState();
}

class _ConfirmPurchaseSheetState extends State<ConfirmPurchaseSheet> {
  bool isConfirmed = false;
  final commentController = TextEditingController();
  String? firstQuestionAnswer;
  String? secondQuestionAnswer;

  bool get isFormValid => isConfirmed && firstQuestionAnswer != null && secondQuestionAnswer != null;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.w,
        right: 20.w,
        bottom: MediaQuery.of(context).viewInsets.bottom,
        top: 20.h,
      ),
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
            Center(
              child: Text("إضافة تقييم", style: TextStyles.font25green),
            ),
            SizedBox(height: 20.h),
            OathTextWidget(username: widget.username),
            SizedBox(height: 10.h),
            CheckboxWidget(
              isConfirmed: isConfirmed,
              onChanged: (value) => setState(() => isConfirmed = value!), text: 'أوافق على هذا التعهد',
            ),
            Divider(color: ColorsManager.black, thickness: 1, height: 20.h),
            QuestionWidget(
              question: "هل قمت بشراء سلعة من البائع ${widget.username}؟",
              groupValue: firstQuestionAnswer,
              onChanged: (value) => setState(() => firstQuestionAnswer = value),
            ),
            Divider(color: ColorsManager.black, thickness: 1, height: 20.h),
            QuestionWidget(
              question: "هل تنصح بالتعامل مع البائع ${widget.username}؟",
              groupValue: secondQuestionAnswer,
              onChanged: (value) => setState(() => secondQuestionAnswer = value),
            ),
            SizedBox(height: 20.h),
            CommentFieldWidget(controller: commentController),
            SizedBox(height: 20.h),
            ContinueButtonWidget(
              isFormValid: isFormValid,
              onPressed: isFormValid ? widget.onConfirmed : null,
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
