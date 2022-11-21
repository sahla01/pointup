
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pointup/onboardscreen/onboardingscreen.dart';
import 'package:pointup/widgets/app_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {

  final Duration initialDelay = const Duration(seconds: 1);
  late final AnimationController _logoController;
  late final AnimationController _controller;
  late final AnimationController _textController;
  bool showRewardAnimation = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _textController = AnimationController(
      duration: initialDelay,
      vsync: this,
    );

    _logoController = AnimationController(
      duration: initialDelay,
      vsync: this,
    )
      ..forward().whenComplete(
            () {
          setState(() {
            showRewardAnimation = true;
          });
          _controller.forward().whenComplete(() {
            _textController.forward().whenComplete(
                  () {
                Future.delayed(initialDelay, () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OnBoardingScreen(),
                    ),
                  );
                });
              },
            );
          });
        },
      );
  }

  @override
  void dispose() {
    _controller.dispose();
    _logoController.dispose();
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(25, 24, 77, 1),
                Color.fromRGBO(25, 24, 77, 1),
                Color.fromRGBO(28, 43, 174, 1)
              ]),
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 250,
              child: Visibility(
                visible: showRewardAnimation,
                child: Lottie.asset(
                  'assets/splashscreen.json',
                  controller: _controller,
                ),
              ),
            ),
            FadeTransition(
              opacity: _logoController,
              child: ScaleTransition(
                scale: _logoController,
                child: Image.asset(
                  "assets/images/pointuplogo.png",
                  height: 70,
                  width: 70,
                ),
              ),
            ),
            FadeTransition(
              opacity: _textController,
              child: Padding(
                padding: const EdgeInsets.only(left: 90),
                child: Image.asset(
                  "assets/images/LRMS .png",
                  height: 30,
                  width: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 270,
            ),
            FadeTransition(
              opacity: _textController,
              child: Column(
                children: [
                  AppText(
                    text: "Brought to you by",
                    color: Colors.white,
                    size: 8,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    "assets/images/SOLTOMLOGO.png",
                    height: 43.71,
                    width: 60.63,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AppText(
                    text: '2022  POINTUPP Rewards. All rights reserved.',
                    color: Colors.white,
                    size: 10,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}