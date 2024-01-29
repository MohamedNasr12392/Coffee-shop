import 'package:flutter/material.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  late Animation<Alignment> alignmentController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    alignmentController = TweenSequence<Alignment>([
      TweenSequenceItem<Alignment>(
        tween: Tween<Alignment>(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        weight: 1,
      ),
    ]).animate(animationController);

    animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnimatedBuilder(
          animation: animationController,
          builder: (context, child) => Stack(
            children: [
              SizedBox(
                width: 42,
                height: 40,
                child: DecoratedBox(
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: alignmentController.value,
                      end: Alignment.bottomRight,
                      colors: [
                        const Color(0xffffffff).withOpacity(.1),
                        const Color(0xFF37373C),
                        const Color(0x7F313139),
                        Colors.black.withOpacity(0),
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        width: 1,
                        color: Color(0xFF131313),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 9,
                top: 9,
                child: Icon(
                  Icons.window_sharp,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
        Container(
          width: 42,
          height: 40,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              image: NetworkImage(
                  'https://th.bing.com/th/id/R.e57f1411986826200310be3114cae48a?rik=4NzBhpstCHbk6A&pid=ImgRaw&r=0'),
              fit: BoxFit.fill,
            ),
          ),
        )
      ],
    );
  }
}
