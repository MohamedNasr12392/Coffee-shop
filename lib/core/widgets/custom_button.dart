import 'package:flutter/material.dart';
import 'package:pixel_co_payment_practice/core/constants/colors.dart';
import 'package:pixel_co_payment_practice/core/constants/gradients.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    super.key,
    required this.buttonText,
    required this.onTapAction,
    this.isLoading = false,
  });

  final String buttonText;
  final void Function()? onTapAction;
  final bool isLoading;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  late Animation<Alignment> alignmentController;

  @override
  void initState() {
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    alignmentController = TweenSequence<Alignment>([
      TweenSequenceItem<Alignment>(
        tween: Tween<Alignment>(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        weight: 1,
      ),
    ]).animate(animationController);

    animationController.repeat();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, child) => GestureDetector(
        onTap: widget.onTapAction,
        child: Container(
          width: 262,
          height: 74,
          decoration: ShapeDecoration(
            // color: MyColors.shadeOfBrown,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            gradient: MyGradients.getPaymentButtonGradient(
              alignmentController.value,
              Alignment.bottomRight,
            ),
          ),
          child: !widget.isLoading
              ? Center(
                  child: Text(
                    widget.buttonText,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                )
              : const CircularProgressIndicator(
                  color: Colors.blueGrey,
                ),
        ),
      ),
    );
  }
}
