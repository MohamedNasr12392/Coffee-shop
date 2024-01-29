import 'package:flutter/material.dart';
import 'package:pixel_co_payment_practice/features/payment/presentation/views/widgets/cart_page_body.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // backgroundColor: Colors.transparent,
      body: CartPageBody(),
    );
  }
}
