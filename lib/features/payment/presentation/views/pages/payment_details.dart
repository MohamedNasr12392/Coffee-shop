import 'package:flutter/material.dart';
import 'package:pixel_co_payment_practice/features/payment/presentation/views/widgets/payment_details_view_body.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PaymentDetailsViewBody(),
    );
  }
}
