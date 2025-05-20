import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_Morhaf/features/product_details/ui/widgets/call_button.dart';
import 'package:souq_Morhaf/features/product_details/ui/widgets/comments.dart';
import 'package:souq_Morhaf/features/product_details/ui/widgets/hashtags_grid.dart';
import 'package:souq_Morhaf/features/product_details/ui/widgets/more_settings_container.dart';
import 'package:souq_Morhaf/features/product_details/ui/widgets/product_app_bar.dart';
import 'package:souq_Morhaf/features/product_details/ui/widgets/product_description.dart';
import 'package:souq_Morhaf/features/product_details/ui/widgets/product_images.dart';
import 'package:souq_Morhaf/features/product_details/ui/widgets/seller_container.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';
import '../../../../core/widgets/circle_avatar_username.dart';
import '../../../../core/widgets/custom_text_button.dart';

class ProductDetailsScreen extends StatelessWidget {
  final String subject; // بدل title
  final String username;
  final String userImagePath;
  final String timeText;
  final String region; // بدل locationText
  final String productImagePath;
  final String additionalInfo;
  final List<String> imageUrls;
  final String phoneNumber;

  const ProductDetailsScreen({
    super.key,
    required this.subject,
    required this.username,
    required this.userImagePath,
    required this.timeText,
    required this.region,
    required this.productImagePath,
    required this.additionalInfo,
    required this.imageUrls,
    required this.phoneNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProductAppBar(
        text: 'تفاصيل المنتج',
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return MoreSettingsContainer(
                userImagePath: userImagePath,
                username: username,
              );
            },
          );
        },
      ),
      body: ListView(
        children: [
          SellerContainer(
            title: subject,
            username: username,
            userImagePath: userImagePath,
            timeText: timeText,
            locationText: region,
            // productImagePath: productImagePath,
          ),
          ProductDescription(additionalInfo: additionalInfo),
          ProductImages(imageUrls: imageUrls),
          CallButton(phoneNumber: phoneNumber),
          HashtagsGrid(),
          SizedBox(height: 28.h),
          Comments(),
        ],
      ),
    );
  }
}
