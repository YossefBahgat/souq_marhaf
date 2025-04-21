import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';
import '../../../../core/widgets/custom_text_button.dart';
import '../../../../core/widgets/custom_text_form_field.dart';

class ChangePasswordForm extends StatefulWidget {
  final VoidCallback onPasswordChanged;

  const ChangePasswordForm({super.key, required this.onPasswordChanged});

  @override
  State<ChangePasswordForm> createState() => _ChangePasswordFormState();
}

class _ChangePasswordFormState extends State<ChangePasswordForm> {
  final _formKey = GlobalKey<FormState>();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "قم بإدخال كلمة المرور الجديدة",
            style: TextStyles.font40green.copyWith(
              decoration: TextDecoration.underline,
              decorationColor: ColorsManager.mainGreen,
              decorationThickness: 1.0,
            ),
          ),
          Column(
            children: [
              CustomTextFormField(
                controller: _newPasswordController,
                hintText: "كلمة المرور الجديدة",
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
                hintText: "تأكيد كلمة المرور",
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
              ),
            ],
          ),
          CustomTextButton(
            text: "تغيير كلمة المرور",
            onPressed: () {
              final isValid = _formKey.currentState!.validate();
              final password = _newPasswordController.text;
              final confirm = _confirmPasswordController.text;

              if (!isValid) return;

              if (password != confirm) {
                // أظهر رسالة خطأ يدويًا
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("كلمات المرور غير متطابقة")),
                );
                return;
              }

              widget.onPasswordChanged();
            },
          ),

        ],
      ),
    );
  }
}
