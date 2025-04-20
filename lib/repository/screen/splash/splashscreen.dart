import 'package:flutter/material.dart';
import 'package:notesync/domain/constants/appcolors.dart';
import 'package:notesync/repository/widgets/uihelper.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffolbackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(img: "notelogo.png"),
          ],
        ),
      ),
    );
  }
}