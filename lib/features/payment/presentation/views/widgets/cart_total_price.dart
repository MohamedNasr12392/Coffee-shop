import 'package:flutter/material.dart';
import 'package:pixel_co_payment_practice/core/constants/styles.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({super.key, required this.title, required this.value});

  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: MyStyles.style18SemiBold.copyWith(
            fontSize: 24,
          ),
        ),
        const Spacer(),
        Text(
          value,
          textAlign: TextAlign.center,
          style: MyStyles.style18SemiBold.copyWith(
            fontSize: 24,
          ),
        )
      ],
    );
  }
}
