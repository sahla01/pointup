import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pointup/models/models.dart';
import 'package:pointup/routes/routes_manager.dart';
import 'package:pointup/widgets/app_text.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {


  final Shader linearGradient = const LinearGradient(
    colors: <Color>[Color(0xff19184D), Color(0xff530393)],
  ).createShader(
    const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
  );


  final PageController _pageViewController = PageController(initialPage: 0);
  late Timer _timer;
  int _activePage = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_activePage < 2) {
        _activePage++;
      } else {
        _activePage = 0;
      }
      _pageViewController.animateToPage(
        _activePage,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _timer.cancel();
    _pageViewController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
              end: Alignment.topRight,
            colors: [
              Color(0xff19184D), Color(0xff530393)
            ]
          )
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(height: 10,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Image.asset(
                    "assets/images/pointuplogo.png",
                    height: 26.93,
                    width: 113.8,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30,),
            Expanded(
              flex: 2,
              child: PageView.builder(
                controller: _pageViewController,
                onPageChanged: (int index) {
                  setState(() {
                    _activePage = index;
                  });
                },
                itemCount: imgList.length,
                itemBuilder: (BuildContext context, int index) {
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        Image.asset(
                          imgList[index],
                          height: 275.34,
                          width: 347,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          contants[index],
                          style: const TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 24,
                              color: Color(0xffFFFFFF)
                        ),),
                        const SizedBox(
                          height: 10,
                        ),
                        AppText(
                          text: 'Boost your customer engagement and grow your\n '
                              '  business with amazing customer loyalty rewards\n'
                              'management system ',
                          size: 12,
                          height: 1.4,
                          color: const Color(0xffFFFFFF),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List<Widget>.generate(
                        imgList.length,
                            (index) => Padding(
                          padding:
                          const EdgeInsets.symmetric(horizontal: 8),
                          child: InkWell(
                            onTap: () {
                              _pageViewController.animateToPage(index,
                                  duration:
                                  const Duration(milliseconds: 300),
                                  curve: Curves.easeIn);
                            },
                            child: CircleAvatar(
                              radius: 5,
                              backgroundColor: _activePage == index
                                  ? Theme.of(context).secondaryHeaderColor
                                  : const Color(0xffF4F6FF),
                            ),
                          ),
                        )),
                  ),
                  const SizedBox(height: 60,),
                  Container(
                    height: 48,
                    margin: const EdgeInsets.all(20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,color: const Color(0xffFFFFFF)),
                      // gradient: const LinearGradient(
                      //     colors: [Color(0xff19184D), Color(0xff530393)]),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, Routes.signIn);
                      },
                      child: Center(
                          child: AppText(
                            text: 'Get Started',
                            color: Colors.white,
                            size: 12,
                            fw: FontWeight.w700,

                          )),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}