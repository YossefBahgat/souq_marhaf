import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';


import '../../features/rating/logic/rating_provider.dart';
import '../theming/font_styles.dart';

class StarRating extends StatelessWidget {
  const StarRating({super.key});

  @override
  Widget build(BuildContext context) {
    final ratingProvider = Provider.of<RatingProvider>(context);
    return Column(
      children: [
        Row(
          children: List.generate(
            5,
                (index) => Icon(
              Icons.star_rounded,
              color: index < ratingProvider.averageRating.round()
                  ? Colors.amber
                  : Colors.grey,
              size: 26,
            ),
          ),
        ),
        SizedBox(height: 10.h),
        Text(
          'متوسط التقييم: ${ratingProvider.averageRating.toStringAsFixed(1)}',
          style: TextStyles.font17gray,
        ),
      ],
    );
  }
}
