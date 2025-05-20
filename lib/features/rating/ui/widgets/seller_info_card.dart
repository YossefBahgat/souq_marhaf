import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../core/theming/font_styles.dart';
import '../../../../core/widgets/star_rating.dart';
import '../../logic/rating_provider.dart';

class SellerInfoCard extends StatelessWidget {
  final String userImagePath;
  final String username;

  const SellerInfoCard({
    super.key,
    required this.userImagePath,
    required this.username,
  });

  @override
  Widget build(BuildContext context) {
    final ratingProvider = Provider.of<RatingProvider>(context);

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            radius: 38.r,
            backgroundImage: AssetImage(userImagePath),
          ),
          Text(username, style: TextStyles.font22black),
          StarRating()
        ],
      ),
    );
  }
}
