import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pointup/onbordingscreen.dart';
import 'package:pointup/widgets/app_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  final Duration initialDelay = Duration(seconds: 1);

  @override

  void initState() {
    Future.delayed(Duration(seconds: 10), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnBordingScreen()));
    });
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
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
            Lottie.asset(
              'assets/splashscreen.json',
              controller: _controller,
              onLoaded: (composition) {
                _controller
                  ..duration = composition.duration
                  ..forward();
              },
            ),
            DelayedDisplay(
              delay: Duration(seconds: initialDelay.inSeconds+1),
              child: Image.asset(
                "assets/images/pointuplogo.png",
                height: 70,
                width: 70,
              ),
            ),
            DelayedDisplay(
              delay: Duration(seconds: initialDelay.inSeconds+2),
              child: Padding(
                padding: const EdgeInsets.only(left: 90),
                child: Image.asset(
                  "assets/images/LRMS .png",
                  height: 30,
                  width: 30,
                ),
              ),
            ),
            SizedBox(height: 270,),
            DelayedDisplay(
              delay: Duration(seconds: initialDelay.inSeconds+2),
              child: Container(
                child: Column(
                  children: [
                    AppText(
                      text: "Brought to you by",
                      color: Colors.white,
                      size: 8,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      "assets/images/SOLTOMLOGO.png",
                      height: 43.71,
                      width: 60.63,
                    ),
                    SizedBox(
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
            )
          ],
        ),
      ),
    );
  }
}
