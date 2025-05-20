import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';
import '../../logic/rating_provider.dart';

class RatingDialog extends StatefulWidget {
  final String username;
  final String userImagePath;

  const RatingDialog({
    super.key,
    required this.username,
    required this.userImagePath, required VoidCallback onConfirmed,
  });

  @override
  State<RatingDialog> createState() => _RatingDialogState();
}

class _RatingDialogState extends State<RatingDialog> {
  int selectedStars = 5;
  final commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final ratingProvider = Provider.of<RatingProvider>(context, listen: false);

    return AlertDialog(
      backgroundColor: ColorsManager.white,
      title: const Text("تقييم البائع", textAlign: TextAlign.center),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              5,
                  (index) => IconButton(
                icon: Icon(Icons.star, size: 30),
                color: index < selectedStars ? Colors.amber : Colors.grey,
                onPressed: () {
                  setState(() {
                    selectedStars = index + 1;
                  });
                },
              ),
            ),
          ),
          SizedBox(height: 20.h),
          TextField(
            controller: commentController,
            decoration: const InputDecoration(
              hintText: "اكتب تعليقك هنا...",
              border: OutlineInputBorder(),
            ),
            maxLines: 3,
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text("إلغاء", style: TextStyles.font20black),
        ),
        ElevatedButton(
          onPressed: () {
            ratingProvider.addRating(
              widget.username,
              widget.userImagePath,
              selectedStars,
              commentController.text,
            );
            Navigator.pop(context);
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("تم إضافة تقييمك بنجاح")),
            );
          },
          child: const Text("تأكيد"),
        ),
      ],
    );
  }
}
