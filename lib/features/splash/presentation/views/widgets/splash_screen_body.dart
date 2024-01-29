import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pixel_co_payment_practice/core/constants/gradients.dart';
import 'package:pixel_co_payment_practice/features/home/presentation/views/pages/home.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with TickerProviderStateMixin {
  late final AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(vsync: this);

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.black,
          gradient: MyGradients.getCartAndSplashGradient(),
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/images/Animation - 1706376020926.json',
              controller: _animationController,
              onLoaded: (lottieComposition) {
                _animationController
                  ..duration = lottieComposition.duration
                  ..forward().whenComplete(
                    () =>
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => HomeView(),
                    )),
                  );
              },
              repeat: false,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 15),
              child: Text(
                'Awake your senses    ',
                style: TextStyle(
                    color: Color(0xFFB77651),
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ));
  }
}
