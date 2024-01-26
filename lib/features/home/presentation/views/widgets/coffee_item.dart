import 'package:flutter/material.dart';
import 'package:pixel_co_payment_practice/features/home/presentation/views/widgets/coffe_item_texts.dart';

class CoffeeItem extends StatefulWidget {
  const CoffeeItem({super.key});

  @override
  State<CoffeeItem> createState() => _CoffeeItemState();
}

class _CoffeeItemState extends State<CoffeeItem>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Alignment> alignmentController;

  @override
  void initState() {
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));

    alignmentController = TweenSequence<Alignment>(
      [
        TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          weight: 1,
        ),
      ],
    ).animate(animationController);

    animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width * .42;
    final double height = MediaQuery.of(context).size.height * .36;
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, child) {
        return Container(
          width: width,
          height: height,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: alignmentController.value,
              end: Alignment.bottomRight,
              colors: [
                const Color(0xffffffff).withOpacity(.1),
                const Color(0xFF37373C),
                const Color(0x7F313139),
                Colors.black.withOpacity(0),
                const Color(0xFF37373C),
              ],
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: width * .9,
                height: height * .54,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://tse3.mm.bing.net/th/id/OIP.sORUCLQs6IFavbrcEWRPgAHaE8?rs=1&pid=ImgDetMain'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              SizedBox(
                height: height * .03,
              ),
              CoffeItemTexts(
                height: height,
              ),
            ],
          ),
        );
      },
    );
  }
}
