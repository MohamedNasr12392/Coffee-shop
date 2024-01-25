import 'package:flutter/material.dart';
import 'package:pixel_co_payment_practice/features/home/presentation/views/widgets/home_Text_and_search_bar.dart';
import 'package:pixel_co_payment_practice/features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:pixel_co_payment_practice/features/home/presentation/views/widgets/coffe_types_bar.dart';

class HomeView extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();

  HomeView({super.key});

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
              const CoffeTypesBar(),
              // Container(
              //   width: 168,
              //   height: 259,
              //   child: Column(
              //     children: [
              //       Container(
              //         decoration:  BoxDecoration(
              //           image: const DecorationImage(
              //             image: NetworkImage(
              //                 'https://tse3.mm.bing.net/th/id/OIP.sORUCLQs6IFavbrcEWRPgAHaE8?rs=1&pid=ImgDetMain'),
              //             fit: BoxFit.fill,
              //           ),
              //           borderRadius: BorderRadius.circular(15),
              //         ),
              //       )
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
