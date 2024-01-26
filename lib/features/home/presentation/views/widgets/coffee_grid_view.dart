import 'package:flutter/material.dart';
import 'package:pixel_co_payment_practice/features/home/presentation/views/pages/coffe_details_page.dart';
import 'package:pixel_co_payment_practice/features/home/presentation/views/widgets/coffee_item.dart';

class CoffeeGridView extends StatelessWidget {
  const CoffeeGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 4,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: MediaQuery.of(context).size.height * 0.05,
        childAspectRatio: 1 / 1.85,
        crossAxisSpacing: 10,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => GestureDetector(
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const CoffeeDetailsPage(),
        )),
        child: const CoffeeItem(),
      ),
    );
  }
}
