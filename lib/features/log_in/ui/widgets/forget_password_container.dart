import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_marhaf/core/widgets/custom_text_button.dart';
import 'package:souq_marhaf/core/widgets/custom_text_form_field.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';

class ForgetPasswordForm extends StatelessWidget {
  final VoidCallback onSendEmail;
  final VoidCallback onBackToLogin;

  const ForgetPasswordForm({
    super.key,
    required this.onSendEmail,
    required this.onBackToLogin,
  });

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final _emailController = TextEditingController();

    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "استعادة كلمة المرور",
            style: TextStyles.font40green.copyWith(
              decoration: TextDecoration.underline,
              decorationColor: ColorsManager.mainGreen,
              decorationThickness: 1.0,
            ),
          ),
          Text(
            "أدخل بريدك الإلكتروني لإرسال كود التحقق",
            style: TextStyles.font22black,
            textAlign: TextAlign.center,
          ),
          CustomTextFormField(
            controller: _emailController,
            hintText: "البريد الالكتروني",
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || value.isEmpty) return "هذا الحقل مطلوب";
              if (!value.contains('@')) return "بريد غير صالح";
              return null;
            },
          ),
          CustomTextButton(
            text: "إرسال",
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                onSendEmail();
              }
            },
          ),
          TextButton(
            onPressed: onBackToLogin,
            child: Text("العودة لتسجيل الدخول", style: TextStyles.font22black),
          ),
        ],
      ),
    );
  }
}
