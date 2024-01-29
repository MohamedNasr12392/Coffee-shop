import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pixel_co_payment_practice/core/constants/gradients.dart';
import 'package:pixel_co_payment_practice/core/widgets/custom_button.dart';
import 'package:pixel_co_payment_practice/features/payment/presentation/views/pages/thank_you_page.dart';
import 'package:pixel_co_payment_practice/features/payment/presentation/views/widgets/custom_credit_card.dart';
import 'package:pixel_co_payment_practice/features/payment/presentation/views/widgets/payment_methods_list_view.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: MyGradients.getCartAndSplashGradient(),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: PaymentMethodsListView(),
            ),
            SliverToBoxAdapter(
              child: CustomCreditCard(
                autovalidateMode: autovalidateMode,
                formKey: formKey,
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(bottom: 12, left: 16, right: 16),
                    child: CustomButton(
                      onTapAction: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const ThankYouPage();
                          }));
                          log('payment');
                        } else {
                          autovalidateMode = AutovalidateMode.always;
                          setState(() {});
                        }
                      },
                      buttonText: 'Payment',
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
