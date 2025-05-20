import 'package:flutter/material.dart';
import 'package:souq_Morhaf/features/home/ui/widgets/bottom_navigation_bar_widget.dart';
import '../../../home_chats/ui/screens/chats_screen.dart';
import '../../../favorite/ui/screens/favorite_screen.dart';
import 'home_body_screen.dart';
import '../../../notifications/ui/screens/notification_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    const HomeBodyScreen(),
     FavoriteScreen(),
    const NotificationScreen(),
    const ChatsScreen(),
  ];

  void _onItemTapped(int index) {
    print(index);
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _screens),
      bottomNavigationBar: BottomNavigationBarWidget(
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
