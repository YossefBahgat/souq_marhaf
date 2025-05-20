import 'package:flutter/material.dart';
import 'package:souq_Morhaf/core/routing/routes.dart';
import 'package:souq_Morhaf/features/log_in/ui/screens/log_in_screen.dart';
import 'package:souq_Morhaf/features/product_details/ui/screens/product_details_screen.dart';
import 'package:souq_Morhaf/features/product_details/ui/widgets/more_settings_container.dart';
import 'package:souq_Morhaf/features/product_details/ui/widgets/product_details_args.dart';
import 'package:souq_Morhaf/features/rating/ui/screens/rating_screen.dart';
import 'package:souq_Morhaf/features/safety_center/ui/safety_center_screen.dart';
import 'package:souq_Morhaf/features/sections/ui/screens/sections_screen.dart';
import 'package:souq_Morhaf/features/site_policy/ui/screens/policy_screen.dart';
import 'package:souq_Morhaf/features/splash/ui/splash_screen.dart';

import '../../features/add_offer/ui/screens/add_new_offer_screen.dart';
import '../../features/add_offer/ui/screens/add_offer_completed_screen.dart';
import '../../features/add_offer/ui/screens/add_offer_screen.dart';
import '../../features/add_offer/ui/widgets/phone_log_in_screen.dart';
import '../../features/chats/ui/screens/chats_screen.dart';
import '../../features/home/ui/screens/home_screen.dart';
import '../../features/seller_details/ui/screens/seller_details_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.logInScreen:
        return MaterialPageRoute(builder: (_) => const LogInScreen());
      case Routes.policyScreen:
        return MaterialPageRoute(builder: (_) => const PolicyScreen());
      case Routes.safetyCenterScreen:
        return MaterialPageRoute(builder: (_) => const SafetyCenterScreen());
      case Routes.sectionsScreen:
        return MaterialPageRoute(builder: (_) => const SectionsScreen());
      case Routes.addNewOfferScreen:
        return MaterialPageRoute(builder: (_) => const AddNewOfferScreen());
      case Routes.addOfferCompletedScreen:
        return MaterialPageRoute(
          builder: (_) => const AddOfferCompletedScreen(),
        );
      // case Routes.phoneLoginScreen:
      //   return MaterialPageRoute(builder: (_) => PhoneLogInScreen());
      case Routes.chatsScreen:
        final args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder:
              (_) => ChatsScreen(
                username: args['username'],
                userImagePath: args['userImagePath'],
              ),
        );

      case Routes.sellerDetailsScreen:
        final args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder:
              (_) => SellerDetailsScreen(
                username: args['username'],
                userImagePath: args['userImagePath'],
              ),
        );

      case Routes.productDetailsScreen:
        final args = settings.arguments as ProductDetailsArgs;
        return MaterialPageRoute(
          builder:
              (_) => ProductDetailsScreen(
                subject: args.subject,
                username: args.username,
                userImagePath: args.userImagePath,
                timeText: args.timeText,
                region: args.region,
                productImagePath: args.productImagePath,
                additionalInfo: args.additionalInfo,
                imageUrls: args.imageUrls,
                phoneNumber: args.phoneNumber,
              ),
        );

      case Routes.ratingScreen:
        final args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder:
              (_) => RatingScreen(
                userImagePath: args['userImagePath'],
                username: args['username'],
              ),
        );
      default:
        return null;
    }
  }
}
