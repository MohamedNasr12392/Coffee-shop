import 'package:flutter/material.dart';
import 'package:pixel_co_payment_practice/core/constants/colors.dart';
import 'package:pixel_co_payment_practice/features/payment/presentation/views/pages/cart_page.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonText,
    required this.onTapAction,
  });

  final String buttonText;
  final void Function()? onTapAction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapAction,
      child: Container(
        width: 262,
        height: 74,
        decoration: ShapeDecoration(
          color: MyColors.shadeOfBrown,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
        ),
      ),
    );
  }
}
