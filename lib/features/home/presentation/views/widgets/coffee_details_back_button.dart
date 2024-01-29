import 'package:flutter/material.dart';

class CoffeeDetailsBackButton extends StatelessWidget {
  const CoffeeDetailsBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      left: 10,
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          width: 42,
          height: 40,
          decoration: ShapeDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF37373C), Color(0xFF313139), Colors.black],
            ),
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 1,
                color: Color(0xFF131313),
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: const Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
