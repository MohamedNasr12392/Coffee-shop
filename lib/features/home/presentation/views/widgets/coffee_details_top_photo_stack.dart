import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pixel_co_payment_practice/features/home/presentation/views/widgets/coffee_Details_love_button.dart';
import 'package:pixel_co_payment_practice/features/home/presentation/views/widgets/coffee_details_back_button.dart';
import 'package:pixel_co_payment_practice/features/home/presentation/views/widgets/coffee_details_details_Section_over_photo.dart';

class CoffeeDetailsTopPhotoStack extends StatelessWidget {
  const CoffeeDetailsTopPhotoStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                'assets/images/1430368.jpg',
              ),
            ),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        const CoffeeDetailsBackButton(),
        const CoffeeDetailsLoveButton(),
        const CoffeeDetailsDetailsSectionOverPhoto(),
      ],
    );
  }
}
