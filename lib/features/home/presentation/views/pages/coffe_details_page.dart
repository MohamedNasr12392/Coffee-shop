import 'package:flutter/material.dart';
import 'package:pixel_co_payment_practice/features/home/presentation/views/widgets/coffee_Details_coffee_sizes.dart';
import 'package:pixel_co_payment_practice/features/home/presentation/views/widgets/coffee_details_Description_part.dart';
import 'package:pixel_co_payment_practice/features/home/presentation/views/widgets/coffee_details_top_photo_stack.dart';
import 'package:pixel_co_payment_practice/features/home/presentation/views/widgets/coffee_price_and_buy_now_button.dart';

class CoffeeDetailsPage extends StatelessWidget {
  const CoffeeDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CoffeeDetailsTopPhotoStack(),
            SizedBox(
              height: 20,
            ),
            CoffeeDetailsDescriptionPart(),
            SizedBox(
              height: 20,
            ),
            CoffeeSizes(),
            Expanded(
              child: SizedBox(),
            ),
            CoffeePriceAndBuyNowButton(),
          ],
        ),
      ),
    );
  }
}
