import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';
import '../../../../core/widgets/custom_text_button.dart';
import '../../../../core/widgets/custom_text_form_field.dart';

class ForgetPasswordForm extends StatefulWidget {
  final VoidCallback onBackToLogin;

  const ForgetPasswordForm({super.key, required this.onBackToLogin});

  @override
  State<ForgetPasswordForm> createState() => _ForgetPasswordFormState();
}

class _ForgetPasswordFormState extends State<ForgetPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  bool _isLoading = false;

  Future<void> _sendPasswordResetEmail() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isLoading = true);

    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(
        email: _emailController.text.trim(),
      );

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("تم إرسال رابط استعادة كلمة المرور إلى البريد الإلكتروني.")),
      );

    } on FirebaseAuthException catch (e) {
      String message = "حدث خطأ. حاول مرة أخرى.";
      if (e.code == 'user-not-found') {
        message = "لا يوجد مستخدم مسجل بهذا البريد الإلكتروني.";
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)),
      );
    } finally {
      setState(() => _isLoading = false);
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "استعادة كلمة المرور",
            style: TextStyles.font40green.copyWith(
              decoration: TextDecoration.underline,
              decorationColor: ColorsManager.fontGreen,
              decorationThickness: 1.0,
            ),
          ),
          Text(
            "أدخل البريد الإلكتروني لإرسال رابط استعادة كلمة المرور",
            style: TextStyles.font22black,
            textAlign: TextAlign.center,
          ),
          CustomTextFormField(
            controller: _emailController,
            hintText: "البريد الإلكتروني",
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || value.isEmpty) return "هذا الحقل مطلوب";
              if (!RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$").hasMatch(value)) {
                return "البريد الإلكتروني غير صالح";
              }
              return null;
            },
          ),
          _isLoading
              ? const CircularProgressIndicator()
              : CustomTextButton(
            text: "إرسال",
            onPressed: _sendPasswordResetEmail,
          ),
          TextButton(
            onPressed: widget.onBackToLogin,
            child: Text("العودة لتسجيل الدخول", style: TextStyles.font22black),
          ),
        ],
      ),
    );
  }
}
