import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixel_co_payment_practice/core/constants/gradients.dart';
import 'package:pixel_co_payment_practice/core/utils/stripe_service.dart';
import 'package:pixel_co_payment_practice/core/widgets/custom_button.dart';
import 'package:pixel_co_payment_practice/features/payment/data/repos/payment_repo_implementation.dart';
import 'package:pixel_co_payment_practice/features/payment/presentation/view_model/stripe_cubit/stripe_cubit_cubit.dart';
import 'package:pixel_co_payment_practice/features/payment/presentation/views/pages/payment_details.dart';
import 'package:pixel_co_payment_practice/features/payment/presentation/views/widgets/cart_total_price.dart';
import 'package:pixel_co_payment_practice/features/payment/presentation/views/widgets/order_info_item.dart';
import 'package:pixel_co_payment_practice/features/payment/presentation/views/widgets/payment_methods_bottom_sheet.dart';

class CartPageBody extends StatelessWidget {
  const CartPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.black,
        gradient: MyGradients.getCartAndSplashGradient(),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 18,
          ),
          Expanded(child: Image.asset('assets/images/1076723.jpg')),
          const SizedBox(
            height: 25,
          ),
          const OrderInfoItem(
            title: 'Order Subtotal',
            value: r'42.97$',
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(
            title: 'Discount',
            value: r'0$',
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(
            title: 'Shipping',
            value: r'8$',
          ),
          const Divider(
            thickness: 2,
            height: 34,
            color: Colors.black,
          ),
          const TotalPrice(title: 'Total', value: r'$50.97'),
          const SizedBox(
            height: 16,
          ),
          CustomButton(
            buttonText: 'Complete Payment',
            onTapAction: () {
              showModalBottomSheet(
                context: context,
                backgroundColor: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                builder: (context) {
                  return BlocProvider(
                    create: (context) => StripeCubit(
                      PaymentRepoImplement(
                        stripeService: StripeService(),
                      ),
                    ),
                    child: const PaymentMethodsBottomSheet(),
                  );
                },
              );
            },
          ),
          const SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
