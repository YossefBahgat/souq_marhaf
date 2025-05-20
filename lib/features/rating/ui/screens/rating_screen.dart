import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:souq_Morhaf/core/theming/colors.dart';
import 'package:souq_Morhaf/core/theming/font_styles.dart';
import 'package:souq_Morhaf/features/rating/ui/widgets/add_rating_button.dart';
import 'package:souq_Morhaf/features/rating/ui/widgets/positive_negative_comments_row.dart';
import 'package:souq_Morhaf/features/rating/ui/widgets/ratings_list.dart';
import 'package:souq_Morhaf/features/rating/ui/widgets/seller_info_card.dart';

import '../../logic/rating_provider.dart';

class RatingScreen extends StatelessWidget {
  final String userImagePath;
  final String username;


  const RatingScreen({
    super.key,
    required this.userImagePath,
    required this.username,
  });

  @override
  Widget build(BuildContext context) {
    final ratingProvider = Provider.of<RatingProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("التقييمات", style: TextStyles.font22blackSemibold),
        centerTitle: true,
        backgroundColor: ColorsManager.appBarGreen,
      ),
      body: Column(
        children: [
          SellerInfoCard(userImagePath: userImagePath, username: username),
          Divider(height: 1.h),
          const PositiveNegativeCommentsRow(),
          Divider(height: 1.h),
          Expanded(child: RatingsList()),
          AddRatingButton(userImagePath: userImagePath, username: username, onConfirmed: () {  },),
          SizedBox(height: 50.h),
        ],
      ),
    );
  }
}

