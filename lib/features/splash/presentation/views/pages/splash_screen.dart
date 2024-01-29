import 'package:flutter/material.dart';
import 'package:pixel_co_payment_practice/features/splash/presentation/views/widgets/splash_screen_body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashScreenBody(),
    );
  }
}
