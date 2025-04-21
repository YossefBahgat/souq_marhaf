import 'package:flutter/material.dart';
import 'package:souq_marhaf/features/home/ui/widgets/app_bar_widget.dart';
import 'package:souq_marhaf/features/home/ui/widgets/bottom_navigation_bar_widget.dart';
import 'package:souq_marhaf/features/home/ui/widgets/drawer_widget.dart';
import 'package:souq_marhaf/features/home/ui/widgets/home_body_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
      const  HomeBodyScreen(),
    //const FriendsScreen(),
    //const ChatScreen(),
    //const GiftsScreen(),
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
      appBar: AppBarWidget(),
      drawer: DrawerWidget(),
      body:
      IndexedStack(index: _currentIndex, children: _screens),
      bottomNavigationBar: BottomNavigationBarWidget(
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
