import 'package:flutter/material.dart';
import 'package:pixel_co_payment_practice/core/constants/colors.dart';

class CoffeePrice extends StatelessWidget {
  const CoffeePrice({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: '\$',
            style: TextStyle(
              color: MyColors.shadeOfBrown,
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              height: 1,
            ),
          ),
          TextSpan(
            text: '4.20',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              height: 1,
            ),
          ),
        ],
      ),
    );
  }
}
