import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoffeeDetailsLoveButton extends StatefulWidget {
  const CoffeeDetailsLoveButton({super.key});

  @override
  State<CoffeeDetailsLoveButton> createState() =>
      _CoffeeDetailsLoveButtonState();
}

class _CoffeeDetailsLoveButtonState extends State<CoffeeDetailsLoveButton> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      right: 10,
      child: GestureDetector(
        onTap: () {
          setState(() {
            isClicked = !isClicked;
          });
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
          child: Icon(
            CupertinoIcons.heart_fill,
            color: !isClicked ? Colors.grey : Colors.red,
          ),
        ),
      ),
    );
  }
}
