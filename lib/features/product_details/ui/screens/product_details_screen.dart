import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_marhaf/features/product_details/ui/widgets/call_button.dart';
import 'package:souq_marhaf/features/product_details/ui/widgets/comments.dart';
import 'package:souq_marhaf/features/product_details/ui/widgets/hashtags_grid.dart';
import 'package:souq_marhaf/features/product_details/ui/widgets/more_settings_container.dart';
import 'package:souq_marhaf/features/product_details/ui/widgets/product_app_bar.dart';
import 'package:souq_marhaf/features/product_details/ui/widgets/product_description.dart';
import 'package:souq_marhaf/features/product_details/ui/widgets/product_images.dart';
import 'package:souq_marhaf/features/product_details/ui/widgets/seller_container.dart';

import '../../../core/routing/routes.dart';
import '../../../core/theming/colors.dart';
import '../../../core/theming/font_styles.dart';
import '../../../core/widgets/circle_avatar_username.dart';
import '../../../core/widgets/custom_text_button.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({
    super.key,
    required this.title,
    required this.username,
    required this.userImagePath,
    required this.timeText,
    required this.locationText,
    required this.productImagePath,
  });

  final String title;
  final String username;
  final String userImagePath;
  final String timeText;
  final String locationText;
  final String productImagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProductAppBar(
        text: 'تفاصيل المنتج',
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return MoreSettingsContainer(userImagePath: userImagePath, username:username );
            },
          );
        },
      ),
      body: ListView(
        children: [
          SellerContainer(
            title: title,
            username: username,
            userImagePath: userImagePath,
            timeText: timeText,
            locationText: locationText,
            productImagePath: productImagePath,
          ),
          ProductDescription(),
          ProductImages(),
          CallButton(),
          HashtagsGrid(),
          SizedBox(height: 28.h),
          Comments(),
        ],
      ),
    );
  }
}
