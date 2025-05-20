import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:souq_Morhaf/core/routing/routes.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/font_styles.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../log_in/ui/screens/log_in_screen.dart';
import '../../logic/favorites_provider.dart';

class FavoriteItem {
  final String title;
  final String username;
  final String userImagePath;
  final String timeText;
  final String locationText;
  final String productImagePath;
  final String image;

  FavoriteItem({
    required this.title,
    required this.username,
    required this.userImagePath,
    required this.timeText,
    required this.locationText,
    required this.productImagePath,
    required this.image,
  });
}

class FavoriteScreen extends StatelessWidget {
  final bool isLoggedIn = true; // مؤقتًا، عدّله حسب مزود تسجيل الدخول لاحقًا

  @override
  Widget build(BuildContext context) {
    final favoriteItems = Provider.of<FavoritesProvider>(context).favorites;

    return Scaffold(
      appBar: CustomAppBar(text: "المفضلة"),
      body:
          isLoggedIn
              ? (favoriteItems.isEmpty
                  ? Center(
                    child: Text(
                      "لا توجد عناصر في المفضلة",
                      style: TextStyles.font25green,
                    ),
                  )
                  : ListView.separated(
                    itemCount: favoriteItems.length,
                    separatorBuilder: (_, __) => Divider(),
                    itemBuilder: (context, index) {
                      final item = favoriteItems[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            Routes.productDetailsScreen,
                          );
                        },
                        child: ListTile(
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(8.r),
                            child: Image.file(
                              File(item.image),
                              width: 100.w,
                              height: 100.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: Text(
                            item.title,
                            style: TextStyles.font22green,
                          ),
                          trailing: Icon(Icons.favorite, color: Colors.red),
                        ),
                      );
                    },
                  ))
              : buildLoginPrompt(context),
    );
  }

  Widget buildLoginPrompt(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("يرجى تسجيل الدخول أولًا", style: TextStyles.font25green),
          SizedBox(height: 10),
          GestureDetector(
            onTap:
                () =>
                    showDialog(context: context, builder: (_) => LogInScreen()),
            child: Text(
              "إضغط هنا",
              style: TextStyles.font28green.copyWith(
                decoration: TextDecoration.underline,
                color: ColorsManager.fontGreen,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
