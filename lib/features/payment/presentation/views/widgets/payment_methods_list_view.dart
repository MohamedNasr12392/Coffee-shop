import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixel_co_payment_practice/core/utils/stripe_service.dart';
import 'package:pixel_co_payment_practice/features/payment/data/repos/payment_repo_implementation.dart';
import 'package:pixel_co_payment_practice/features/payment/presentation/view_model/stripe_cubit/stripe_cubit_cubit.dart';
import 'package:pixel_co_payment_practice/features/payment/presentation/views/widgets/payment_method_item.dart';

class PaymentMethodsListView extends StatefulWidget {
  const PaymentMethodsListView({super.key});

  @override
  State<PaymentMethodsListView> createState() => _PaymentMethodsListViewState();
}

class _PaymentMethodsListViewState extends State<PaymentMethodsListView> {
  final List<String> paymentMethodsItems = const [
    'assets/images/card.svg',
    'assets/images/paypal.svg',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: BlocProvider(
        create: (context) =>
            StripeCubit(PaymentRepoImplement(stripeService: StripeService())),
        child: ListView.builder(
            itemCount: paymentMethodsItems.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              print(BlocProvider.of<StripeCubit>(context).activeIndex);
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: BlocBuilder<StripeCubit, StripeCubitState>(
                  buildWhen: (previous, current) =>
                      current is ChangePaymentState,
                  builder: (context, state) {
                    return GestureDetector(
                      onTap: () {
                        BlocProvider.of<StripeCubit>(context)
                            .changePayment(index);
                      },
                      child: PaymentMethodItem(
                        isActive:
                            BlocProvider.of<StripeCubit>(context).activeIndex ==
                                index,
                        image: paymentMethodsItems[index],
                      ),
                    );
                  },
                ),
              );
            }),
      ),
    );
  }
}
