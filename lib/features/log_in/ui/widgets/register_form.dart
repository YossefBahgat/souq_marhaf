import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/custom_text_button.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../logic/auth_controller.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final AuthController authController = AuthController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          controller: emailController,
          hintText: "البريد الالكترونى",
        ),
        SizedBox(height: 0.025.sh),
        CustomTextFormField(
          controller: usernameController,
          hintText: "اسم المستخدم",
        ),
        SizedBox(height: 0.025.sh),
        CustomTextFormField(
          controller: passwordController,
          hintText: "كلمة المرور",
          obscureText: true,
        ),
        SizedBox(height: 0.025.sh),
        CustomTextFormField(
          keyboardType: TextInputType.emailAddress,
          hintText: "تأكيد كلمة المرور",
          obscureText: true,
        ),
        SizedBox(height: 0.02.sh),
        Transform.translate(
          offset: Offset(0, 40.h),
          child: CustomTextButton(
            text: "إنشاء حساب",
            onPressed: () {
              authController.handleRegister(
                context: context,
                email: emailController.text.trim(),
                username: usernameController.text.trim(),
                password: passwordController.text.trim(),
              );
            },
          ),
        ),
      ],
    );
  }
}
