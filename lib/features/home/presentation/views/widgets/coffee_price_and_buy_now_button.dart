import 'package:flutter/material.dart';
import 'package:pixel_co_payment_practice/core/constants/colors.dart';
import 'package:pixel_co_payment_practice/core/widgets/coffee_price.dart';
import 'package:pixel_co_payment_practice/core/widgets/custom_button.dart';
import 'package:pixel_co_payment_practice/features/payment/presentation/views/pages/cart_page.dart';

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
        CustomButton(
          buttonText: 'BuyNow',
          onTapAction: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const CartPage(),
            ),
          ),
        ),
      ],
    );
  }
}
