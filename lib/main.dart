import 'package:flutter/material.dart';
import 'package:pixel_co_payment_practice/features/home/presentation/views/pages/home.dart';
import 'package:pixel_co_payment_practice/features/payment/presentation/views/pages/cart_page.dart';
import 'package:pixel_co_payment_practice/features/splash/presentation/views/pages/splash_screen.dart';

void main() {
  runApp(const PixelCo());
}

class PixelCo extends StatelessWidget {
  const PixelCo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        title: 'Payment Practice',
        debugShowCheckedModeBanner: false,
        theme: ThemeData().copyWith(
            // scaffoldBackgroundColor: Colors.black,
            ),
        home: const SplashScreen(),
      ),
    );
  }
}
