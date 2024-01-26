import 'package:flutter/material.dart';
import 'package:pixel_co_payment_practice/core/widgets/coffee_price.dart';

class CoffeePriceAndBuyNowButton extends StatelessWidget {
  const CoffeePriceAndBuyNowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const CoffeePrice(),
        const SizedBox(
          width: 27,
        ),
        Container(
          width: 262,
          height: 74,
          decoration: ShapeDecoration(
            color: const Color(0xFFB77651),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: const Center(
            child: Text(
              'Buy Now',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
