import 'package:flutter/material.dart';

class CoffeeDetailsDescriptionPart extends StatelessWidget {
  const CoffeeDetailsDescriptionPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description',
          style: TextStyle(
            color: Colors.white.withOpacity(0.8299999833106995),
            fontSize: 16,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text:
                    'A cappuccino is a coffee-based drink made primarily from espresso and milk ',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8299999833106995),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
              const TextSpan(
                text: '. . . Read more',
                style: TextStyle(
                  color: Color(0xFFB77651),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
