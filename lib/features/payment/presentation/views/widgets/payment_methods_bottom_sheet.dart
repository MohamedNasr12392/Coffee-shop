import 'package:flutter/material.dart';
import 'package:pixel_co_payment_practice/core/widgets/custom_button.dart';
import 'package:pixel_co_payment_practice/features/payment/presentation/views/widgets/custom_button_bloc_consumer.dart';
import 'package:pixel_co_payment_practice/features/payment/presentation/views/widgets/payment_methods_list_view.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 20,
        ),
        PaymentMethodsListView(),
        SizedBox(
          height: 16,
        ),
        CustomButtonBlocConsumer(),
      ],
    );
  }
}
