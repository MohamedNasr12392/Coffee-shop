import 'package:flutter/material.dart';

class HomeTextAndSearchBar extends StatelessWidget {
  const HomeTextAndSearchBar({
    super.key,
    required this.searchController,
  });

  final TextEditingController searchController;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Find the best \ncoffee for you',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 32,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          width: double.infinity,
          height: 54,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xD81E1F22),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              const Icon(
                Icons.search_outlined,
                size: 20,
                color: Color(0xff68686A),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: TextField(
                  controller: searchController,
                  keyboardType: TextInputType.text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: const InputDecoration(
                    hintText: 'Find your coffee...',
                    hintStyle: TextStyle(
                      color: Color(0xff68686A),
                      fontSize: 16,
                      letterSpacing: 1,
                    ),
                    border: OutlineInputBorder(
                      gapPadding: 0,
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                  ),
                  cursorColor: const Color(0xff68686A),
                  cursorHeight: 5,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
