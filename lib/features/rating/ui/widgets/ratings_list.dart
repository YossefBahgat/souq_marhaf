import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../core/theming/font_styles.dart';
import '../../logic/rating_provider.dart';

class RatingsList extends StatelessWidget {
  const RatingsList({super.key});

  @override
  Widget build(BuildContext context) {
    final ratingProvider = Provider.of<RatingProvider>(context);

    if (ratingProvider.ratings.isEmpty) {
      return Center(
        child: Text("لا توجد تقييمات حتى الآن", style: TextStyles.font25black),
      );
    }

    return ListView.builder(
      itemCount: ratingProvider.ratings.length,
      itemBuilder: (context, index) {
        final rating = ratingProvider.ratings[index];
        return _buildRatingItem(rating);
      },
    );
  }

  Widget _buildRatingItem(Rating rating) {
    return Card(
      margin: EdgeInsets.only(bottom: 10.h),
      child: Padding(
        padding: EdgeInsets.all(15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20.r,
                  backgroundImage: AssetImage(rating.userImage),
                ),
                SizedBox(width: 10.w),
                Text(rating.userName, style: TextStyles.font18blackSemibold),
                const Spacer(),
                Row(
                  children: List.generate(
                    5,
                        (index) => Icon(
                      Icons.star,
                      size: 16,
                      color: index < rating.stars ? Colors.amber : Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Text(rating.comment, style: TextStyles.font17gray),
            SizedBox(height: 10.h),
            Text(
              "منذ ${DateTime.now().difference(rating.date).inDays} أيام",
              style: TextStyles.font17gray,
            ),
          ],
        ),
      ),
    );
  }
}
