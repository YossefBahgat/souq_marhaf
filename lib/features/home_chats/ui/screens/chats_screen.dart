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

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<ChatsScreen> {
  bool isLoggedIn = false; // غيرها إلى true لتجربة الحالات الأخرى
  List<FavoriteItem> favoriteItems = [
    FavoriteItem(title: "منتج 1", image: "assets/images/product1.jpg"),
    FavoriteItem(title: "منتج 2", image: "assets/images/product2.jpg"),
    FavoriteItem(title: "منتج 3", image: "assets/images/product3.jpg"),
  ]; // إضافة عناصر مفضلة لاختبار الحالة 3

  bool _isPressed = false;
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(text: "الرسائل"),
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
            onTap: () {
              // تنفيذ الإجراء عند الضغط على العنصر (مثال: الانتقال إلى صفحة التفاصيل)
            },
          );
        },
      );
    }
  }
}
