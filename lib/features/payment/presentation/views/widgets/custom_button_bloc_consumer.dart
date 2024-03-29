import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:pixel_co_payment_practice/core/constants/api_keys.dart';
import 'package:pixel_co_payment_practice/core/constants/colors.dart';
import 'package:pixel_co_payment_practice/core/constants/functions.dart';
import 'package:pixel_co_payment_practice/core/widgets/custom_button.dart';
import 'package:pixel_co_payment_practice/features/payment/data/models/payment_intent_input_model.dart';
import 'package:pixel_co_payment_practice/features/payment/presentation/view_model/stripe_cubit/stripe_cubit_cubit.dart';
import 'package:pixel_co_payment_practice/features/payment/presentation/views/pages/thank_you_page.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StripeCubit, StripeCubitState>(
      listener: (context, state) {
        if (state is StripeSuccessState) {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const ThankYouPage(),
          ));
        } else if (state is StripeErrorState) {
          print(state.errMsg.toString());
          Navigator.of(context).pop();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                state.errMsg,
                style: const TextStyle(
                  color: MyColors.shadeOfBrown,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              backgroundColor: Colors.grey,
              duration: const Duration(seconds: 5),
            ),
          );
        }
      },
      builder: (context, state) {
        return CustomButton(
          isLoading: state is StripeLoadingState ? true : false,
          buttonText: 'Continue',
          onTapAction: () {
            final stripeCubit = BlocProvider.of<StripeCubit>(context);

            if (stripeCubit.activeIndex == 0) {
              stripeCubit.changePayment(1);
              MyFunctions.paypalExecution(context);
              print('Switching to index 1');
            } else if (stripeCubit.activeIndex == 1) {
              stripeCubit.changePayment(0);
              PaymentIntentInputModel paymentIntentInputModel =
                  PaymentIntentInputModel(
                amount: '51',
                currency: 'USD',
                customerId: 'cus_PUakaLB2O1WPwg',
              );

              stripeCubit.makePayment(paymentIntentInputModel);
              print('Switching to index 0');
            }
          },
        );
      },
    );
  }
}
