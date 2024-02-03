import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:pixel_co_payment_practice/core/constants/api_keys.dart';
import 'package:pixel_co_payment_practice/features/splash/presentation/views/pages/splash_screen.dart';

void main() {
  Stripe.publishableKey = ApiKeys.publishableKey;
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
          scaffoldBackgroundColor: Colors.black,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
