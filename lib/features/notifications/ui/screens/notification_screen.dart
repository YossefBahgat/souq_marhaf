import 'package:flutter/material.dart';
import 'package:souq_Morhaf/core/theming/font_styles.dart';
import 'package:souq_Morhaf/core/widgets/custom_app_bar.dart';
import '../../../../core/theming/colors.dart';
import '../../../log_in/ui/screens/log_in_screen.dart';

// نموذج عنصر مفضل بسيط
class FavoriteItem {
  final String title;
  final String image;

  FavoriteItem({required this.title, required this.image});
}

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<NotificationScreen> {
  bool isLoggedIn = false; // غيرها إلى true لتجربة الحالات الأخرى
  List<FavoriteItem> favoriteItems = []; // جرب تضيف عناصر هنا لتجرب الحالة الثالثة

  bool _isPressed = false;
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(text: "الإشعارات"),
      body: buildContent(),
    );
  }

  Widget buildContent() {
    if (!isLoggedIn) {
      // الحالة 1: غير مسجل دخول
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("يرجى تسجيل الدخول أولًا", style: TextStyles.font25green),
            SizedBox(height: 10),
            MouseRegion(
              onEnter: (_) => setState(() => _isHovering = true),
              onExit: (_) => setState(() => _isHovering = false),
              child: GestureDetector(
                onTapDown: (_) => setState(() => _isPressed = true),
                onTapUp: (_) {
                  setState(() => _isPressed = false);
                  showDialog(
                    context: context,
                    builder: (context) => LogInScreen(),
                  );
                },
                onTapCancel: () => setState(() => _isPressed = false),
                child: AnimatedScale(
                  scale: _isPressed ? 0.95 : 1.0,
                  duration: Duration(milliseconds: 150),
                  child: Text(
                    "إضغط هنا",
                    style: TextStyles.font28green.copyWith(
                      decoration: TextDecoration.underline,
                      color: _isHovering
                          ? Colors.green.shade700
                          : ColorsManager.fontGreen,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    } else if (favoriteItems.isEmpty) {
      // الحالة 2: لا توجد مفضلات
      return Center(
        child: Text("لا توجد عناصر في المفضلة", style: TextStyles.font25green),
      );
    } else {
      // الحالة 3: عرض العناصر
      return ListView.separated(
        itemCount: favoriteItems.length,
        separatorBuilder: (_, __) => Divider(),
        itemBuilder: (context, index) {
          final item = favoriteItems[index];
          return ListTile(
            leading: Image.asset(item.image, width: 60),
            title: Text(item.title, style: TextStyles.font22green),
            trailing: Icon(Icons.favorite, color: Colors.red),
          );
        },
      );
    }
  }
}
