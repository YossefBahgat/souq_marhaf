import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../logic/auth_controller.dart';
import '../../../../core/widgets/custom_text_button.dart';
import '../../../../core/widgets/custom_text_form_field.dart';

class LoginForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _controller = AuthController();


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(
            controller: emailController,
            hintText: "البريد الالكترونى",
            //     keyboardType: TextInputType.phone,
            validator: (value) {
              if (value == null || value.isEmpty) return "هذا الحقل مطلوب";
              return null;
            },
          ),
          SizedBox(height: 0.025.sh),
          CustomTextFormField(
            keyboardType: TextInputType.emailAddress,
            controller: _passwordController,
            hintText: "كلمة المرور",
            obscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty) return "هذا الحقل مطلوب";
              return null;
            },
          ),
          SizedBox(height: 0.02.sh),
          Transform.translate(
            offset: Offset(0, 40.h),
            child: CustomTextButton(
              text: "تسجيل الدخول",
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _controller.handleLogin(
                    context: context,
                    email: emailController.text.trim(),
                    password: _passwordController.text.trim(),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}