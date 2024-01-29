import 'package:flutter/material.dart';
import 'package:pixel_co_payment_practice/core/widgets/custom_button.dart';
import 'package:pixel_co_payment_practice/features/payment/presentation/views/widgets/payment_methods_list_view.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 20,
        ),
        const PaymentMethodsListView(),
        const SizedBox(
          height: 16,
        ),
        CustomButton(
          buttonText: 'Continue',
          onTapAction: () {},
        )
      ],
    );
  }
}
