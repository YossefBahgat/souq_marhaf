import 'package:flutter/material.dart';
import 'package:souq_marhaf/core/routing/routes.dart';
import 'package:souq_marhaf/features/log_in/ui/log_in_screen.dart';
import 'package:souq_marhaf/features/log_in/ui/widgets/auth_container.dart';

import '../../features/home/ui/home_screen.dart';
import '../../features/log_in/ui/widgets/change_password_container.dart';
import '../../features/log_in/ui/widgets/forget_password_container.dart';
import '../../features/log_in/ui/widgets/log_in_container.dart';
import '../../features/log_in/ui/widgets/otp_container.dart';
import '../../features/log_in/ui/widgets/register_container.dart';
import '../../features/safety_center/safety_center_screen.dart';
import '../../features/site_policy/policy_screen.dart';
import '../../features/splash/ui/splash_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) =>  HomeScreen(),
        );
      case Routes.logInScreen:
        return MaterialPageRoute(
          builder: (_) =>  LogInScreen(),
        );
      case Routes.policyScreen:
        return MaterialPageRoute(
          builder: (_) => const PolicyScreen(),
        );
      case Routes.safetyCenterScreen:
        return MaterialPageRoute(
          builder: (_) => const SafetyCenterScreen(),
        );
      // case Routes.registerForm:
      //   return MaterialPageRoute(
      //     builder: (_) => RegisterForm(),
       // );
      // case Routes.forgetPasswordForm:
      //   return MaterialPageRoute(
      //     builder: (_) => const ForgetPasswordForm(),
      //   );
      // case Routes.otpForm:
      //   return MaterialPageRoute(
      //     builder: (_) => const OtpForm(),
      //   );
      // case Routes.changePasswordForm:
      //   return MaterialPageRoute(
      //     builder: (_) => const ChangePasswordForm(),
      //   );

    }
    return null;
  }
}
// Navigator.pushNamed(context, Routes.otpForm);
//                Navigator.pushNamed(context, Routes.otpForm);
