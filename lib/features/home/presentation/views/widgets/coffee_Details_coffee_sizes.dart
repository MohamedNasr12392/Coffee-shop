import 'package:flutter/material.dart';
import 'package:pixel_co_payment_practice/core/constants/colors.dart';

class CoffeeSizes extends StatelessWidget {
  const CoffeeSizes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Size',
          style: TextStyle(
            color: Colors.white.withOpacity(0.5099999904632568),
            fontSize: 13,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 110,
              height: 37,
              decoration: ShapeDecoration(
                color: Colors.black,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 1,
                    color: MyColors.shadeOfBrown,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'S',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: MyColors.shadeOfBrown,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Container(
              width: 110,
              height: 37,
              decoration: ShapeDecoration(
                color: const Color(0xD81A1A1D),
                shape: RoundedRectangleBorder(
                  side:
                      const BorderSide(width: 1, color: MyColors.shadeOfBrown),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                'M',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5199999809265137),
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Container(
              width: 110,
              height: 37,
              decoration: ShapeDecoration(
                color: const Color(0xD81A1A1D),
                shape: RoundedRectangleBorder(
                  side:
                      const BorderSide(width: 1, color: MyColors.shadeOfBrown),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                'L',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5199999809265137),
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
