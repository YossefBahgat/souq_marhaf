import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_marhaf/core/widgets/custom_text_button.dart';
import 'package:souq_marhaf/core/widgets/custom_text_form_field.dart';

class RegisterForm extends StatelessWidget {
  final VoidCallback onRegister;

  RegisterForm({super.key, required this.onRegister});

  final _emailController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
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
            controller: _usernameController,
            hintText: "اسم المستخدم",
            keyboardType: TextInputType.text,
            validator: (value) {
              if (value == null || value.isEmpty) return "هذا الحقل مطلوب";
              return null;
            },
          ),
          SizedBox(height: 0.025.sh),
          CustomTextFormField(
            controller: _passwordController,
            hintText: "كلمة المرور",
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            validator: (value) {
              if (value == null || value.isEmpty) return "هذا الحقل مطلوب";
              if (value.length < 6) return "كلمة المرور قصيرة جدًا";
              return null;
            },
          ),
          SizedBox(height: 0.025.sh),
          CustomTextFormField(
            controller: _confirmPasswordController,
            hintText: "تاكيد كلمة المرور",
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            validator: (value) {
              if (value != _passwordController.text)
                return "كلمات المرور غير متطابقة";
              return null;
            },
          ),
          SizedBox(height: 0.02.sh),
          Transform.translate(
            offset: Offset(0, 40.h),
            child: CustomTextButton(
              text: "إنشاء حساب",
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  onRegister();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
