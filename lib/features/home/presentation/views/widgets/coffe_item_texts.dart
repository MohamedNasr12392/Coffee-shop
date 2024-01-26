import 'package:flutter/material.dart';
import 'package:pixel_co_payment_practice/core/widgets/coffee_price.dart';

class CoffeItemTexts extends StatelessWidget {
  const CoffeItemTexts({super.key, required this.height});

  final double height;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Cappuccino',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            height: 1,
          ),
        ),
        SizedBox(
          height: height * .03,
        ),
        Text(
          'With Oat Milk',
          style: TextStyle(
            color: Colors.white.withOpacity(0.5099999904632568),
            fontSize: 14,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            height: 1,
          ),
        ),
        SizedBox(
          height: height * .03,
        ),
        Row(
          children: [
            const CoffeePrice(),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: Color(0xFFB77651),
              ),
              splashColor: const Color(0xFFB77651),
            ),
          ],
        ),
      ],
    );
  }
}
