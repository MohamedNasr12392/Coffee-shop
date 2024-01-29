import 'package:flutter/material.dart';
import 'package:pixel_co_payment_practice/features/payment/presentation/views/widgets/thank_you_view_body.dart';

class ThankYouPage extends StatelessWidget {
  const ThankYouPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Transform.translate(
        offset: const Offset(0, 19),
        child: const ThankYouViewBody(),
      ),
    );
  }
}
