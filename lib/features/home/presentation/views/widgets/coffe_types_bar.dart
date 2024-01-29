import 'package:flutter/material.dart';
import 'package:pixel_co_payment_practice/core/constants/colors.dart';
import 'package:pixel_co_payment_practice/features/home/presentation/views/widgets/circle_tab_indicator.dart';

class CoffeTypesBar extends StatelessWidget {
  const CoffeTypesBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: true,
      dividerColor: Colors.transparent,
      dividerHeight: 0,
      indicatorColor: MyColors.shadeOfBrown,
      physics: const BouncingScrollPhysics(),
      tabAlignment: TabAlignment.start,
      labelColor: MyColors.shadeOfBrown,
      indicatorWeight: 10,
      indicator: CircleTabIndicator(
        color: MyColors.shadeOfBrown,
        radius: 5,
      ),
      labelStyle: TextStyle(
        color: Colors.white.withOpacity(0.33000001311302185),
        fontSize: 16,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w700,
        height: 0,
      ),
      unselectedLabelColor: Colors.white.withOpacity(0.33000001311302185),
      unselectedLabelStyle: TextStyle(
        color: Colors.white.withOpacity(0.33000001311302185),
        fontSize: 16,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w700,
        height: 0,
      ),
      tabs: const [
        Text(
          'Cappuccino',
        ),
        Text(
          'Espresso',
        ),
        Text(
          'Latte',
        ),
        Text(
          'Mocha',
        ),
      ],
    );
  }
}
