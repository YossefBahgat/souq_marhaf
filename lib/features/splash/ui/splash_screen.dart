import 'package:flutter/material.dart';
import 'package:souq_Morhaf/features/home/ui/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 6), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>  HomeScreen()),
      );
    });
    return Scaffold(
      body: Container(
        color: Color(0xff93D82D),
        child: Center(child: Image.asset("assets/images/splash_logo.png")),
      ),
    );
  }
}
