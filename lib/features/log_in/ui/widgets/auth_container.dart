import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_Morhaf/features/log_in/ui/widgets/register_form.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';
import 'change_password_form.dart';
import 'forget_password_form.dart';
import 'log_in_form.dart';
import 'otp_form.dart';

class AuthContainer extends StatelessWidget {
  const AuthContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.6.sh,
      width: 0.83.sw,
      decoration: BoxDecoration(
        color: ColorsManager.appBarGreen,
        borderRadius: BorderRadius.circular(15.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 4.r,
            offset: Offset(0, 4.h),
          ),
        ],
      ),
      child: const AuthView(),
    );
  }
}

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AuthFormSwitcher();
  }
}

class AuthFormSwitcher extends StatefulWidget {
  const AuthFormSwitcher({super.key});

  @override
  State<AuthFormSwitcher> createState() => _AuthFormSwitcherState();
}

class _AuthFormSwitcherState extends State<AuthFormSwitcher> {
  bool showLogin = true;
  bool showForgetPassword = false;
  bool showOtp = false;
  bool showChangePassword = false;

  @override
  Widget build(BuildContext context) {
    if (showForgetPassword) {
      return ForgetPasswordForm(
        // onSendEmail: () {
        //   setState(() {
        //     showForgetPassword = false;
        //     showOtp = true;
        //   });
        // },
        onBackToLogin: () {
          setState(() {
            showForgetPassword = false;
          });
        },
      );
    } else if (showOtp) {
      return OtpForm(
        onOtpVerified: () {
          setState(() {
            showOtp = false;
            showChangePassword = true;
          });
        },
      );
    } else if (showChangePassword) {
      return ChangePasswordForm(
        onPasswordChanged: () {
          setState(() {
            showChangePassword = false;
            showLogin = true;
          });
        },
      );
    } else {
      return _buildAuthTabs();
    }
  }

  Widget _buildAuthTabs() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildAuthTab(
              text: "اشتراك",
              isActive: !showLogin,
              onTap: () => setState(() => showLogin = false),
            ),
            _buildAuthTab(
              text: "تسجيل الدخول",
              isActive: showLogin,
              onTap: () => setState(() => showLogin = true),
            ),
          ],
        ),
        showLogin ? LoginForm() : RegisterForm(),
        if (showLogin)
          TextButton(
            onPressed: () {
              setState(() {
                showForgetPassword = true;
              });
            },
            child: Text("هل نسيت كلمة السر؟", style: TextStyles.font22black),
          )
        else
          const SizedBox(height: 20),
      ],
    );
  }

  Widget _buildAuthTab({
    required String text,
    required bool isActive,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style:
            isActive
                ? TextStyles.font40green.copyWith(
                  decoration: TextDecoration.underline,
                  decorationColor: ColorsManager.fontGreen,
                  decorationThickness: 1.0,
                )
                : TextStyles.font30black,
      ),
    );
  }
}
