import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:notesync/repository/screen/loginscreen/login.dart';
import 'package:notesync/domain/constants/appcolors.dart'; 

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Nothing here — waiting for animation to load
  }

  void _navigateToLogin() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffolbackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/animation/Animation - 1746323753708.json',
              width: 150,
              height: 150,
              repeat: false,
              onLoaded: (composition) {
                Future.delayed(composition.duration, _navigateToLogin);
              },
            ),
          ],
        ),
      ),
    );
  }
}
