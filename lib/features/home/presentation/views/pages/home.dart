import 'package:flutter/material.dart';
import 'package:pixel_co_payment_practice/features/home/presentation/views/widgets/circle_tab_indicator.dart';
import 'package:pixel_co_payment_practice/features/home/presentation/views/widgets/home_Text_and_search_bar.dart';
import 'package:pixel_co_payment_practice/features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:pixel_co_payment_practice/features/home/presentation/views/widgets/home_tab_bar.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      animationDuration: const Duration(milliseconds: 600),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(right: 35, left: 28, top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeAppBar(),
              const SizedBox(
                height: 48,
              ),
              HomeTextAndSearchBar(
                searchController: searchController,
              ),
              const SizedBox(
                height: 43,
              ),
              const HomeTapBar(),
            ],
          ),
        ),
      ),
    );
  }
}
