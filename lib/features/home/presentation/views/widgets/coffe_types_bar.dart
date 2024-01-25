import 'package:flutter/material.dart';
import 'package:pixel_co_payment_practice/features/home/presentation/views/widgets/circle_tab_indicator.dart';

class HomeTapBar extends StatelessWidget {
  const HomeTapBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: true,
      dividerColor: Colors.transparent,
      dividerHeight: 0,
      indicatorColor: const Color(0xFFB77651),
      physics: const BouncingScrollPhysics(),
      tabAlignment: TabAlignment.start,
      labelColor: const Color(0xFFB77651),
      indicatorWeight: 10,
      indicator: CircleTabIndicator(
        color: const Color(0xFFB77651),
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
