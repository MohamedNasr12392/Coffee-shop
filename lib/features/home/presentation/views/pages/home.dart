import 'package:flutter/material.dart';
import 'package:pixel_co_payment_practice/features/home/presentation/views/widgets/coffee_grid_view.dart';
import 'package:pixel_co_payment_practice/features/home/presentation/views/widgets/home_Text_and_search_bar.dart';
import 'package:pixel_co_payment_practice/features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:pixel_co_payment_practice/features/home/presentation/views/widgets/coffe_types_bar.dart';

class HomeView extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();

  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(right: 35, left: 28, top: 40),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
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
              const DefaultTabController(
                  length: 4,
                  animationDuration: Duration(milliseconds: 600),
                  child: CoffeTypesBar()),
              const SizedBox(
                height: 30,
              ),
              const CoffeeGridView(),
            ],
          ),
        ),
      ),
    );
  }
}
