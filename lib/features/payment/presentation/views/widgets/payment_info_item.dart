import 'package:flutter/material.dart';
import 'package:pixel_co_payment_practice/core/constants/styles.dart';

class PaymentItemInfo extends StatelessWidget {
  const PaymentItemInfo({super.key, required this.title, required this.value});
  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: MyStyles.style18,
        ),
        Text(
          value,
          style: MyStyles.style18SemiBold,
        )
      ],
    );
  }
}
