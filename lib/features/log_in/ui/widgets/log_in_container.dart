import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_marhaf/core/widgets/custom_text_button.dart';

import '../../../../core/widgets/custom_text_form_field.dart';

class LoginForm extends StatelessWidget {
  final VoidCallback onLogin;

  LoginForm({super.key, required this.onLogin});

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(
            controller: _emailController,
            hintText: "البريد الالكترونى",
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || value.isEmpty) return "هذا الحقل مطلوب";
              if (!value.contains('@')) return "بريد غير صالح";
              return null;
            },
          ),
          SizedBox(height: 0.025.sh),
          CustomTextFormField(
            controller: _passwordController,
            hintText: "كلمة المرور",
            obscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty) return "هذا الحقل مطلوب";
              if (value.length < 6) return "كلمة المرور قصيرة جدًا";
              return null;
            },
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 0.02.sh),
          Transform.translate(
            offset: Offset(0, 40.h),
            child: CustomTextButton(
              text: "تسجيل الدخول",
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  onLogin();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
