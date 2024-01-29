import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:pixel_co_payment_practice/core/constants/colors.dart';

class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard(
      {super.key, required this.formKey, required this.autovalidateMode});

  final GlobalKey<FormState> formKey;
  final AutovalidateMode autovalidateMode;
  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';

  bool showBackView = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView: showBackView,
          isHolderNameVisible: true,
          onCreditCardWidgetChange: (value) {},
          cardBgColor: Colors.grey,
        ),
        CreditCardForm(
          isHolderNameVisible: true,
          autovalidateMode: widget.autovalidateMode,
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          inputConfiguration: const InputConfiguration(
            cardHolderTextStyle: TextStyle(
              color: Colors.grey,
            ),
            cvvCodeTextStyle: TextStyle(
              color: Colors.grey,
            ),
            cardNumberTextStyle: TextStyle(
              color: Colors.grey,
            ),
            expiryDateTextStyle: TextStyle(
              color: Colors.grey,
            ),
          ),
          onCreditCardModelChange: (carditCardModel) {
            cardHolderName = carditCardModel.cardHolderName;
            expiryDate = carditCardModel.expiryDate;
            cvvCode = carditCardModel.cvvCode;
            cardNumber = carditCardModel.cardNumber;
            showBackView = carditCardModel.isCvvFocused;
            setState(
              () {},
            );
          },
          formKey: widget.formKey,
        ),
      ],
    );
  }
}
