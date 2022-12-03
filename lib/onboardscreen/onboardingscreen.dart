import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pointup/loginscreens/signin.dart';
import 'package:pointup/models/models.dart';
import 'package:pointup/widgets/app_text.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
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
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 3,
            child: PageView.builder(
              controller: _pageViewController,
              onPageChanged: (int index) {
                setState(() {
                  _activePage = index;
                });
              },
              itemCount: imgList.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 110),
                  child: Column(
                    children: [
                      Image.asset(
                        imgList[index],
                        height: 243,
                        width: 347,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AppText(
                        text: contants[index],
                        size: 24,
                        color: const Color(0xff19184D),
                        fw: FontWeight.bold,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      AppText(
                        text: 'Boost your customer engagement and grow your\n '
                            '  business with amazing customer loyalty rewards\n'
                            'management system ',
                        size: 12,
                        height: 1.4,
                        color: const Color(0xff19184D),
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
                Container(
                  color: Colors.white,
                  child: Row(
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
                                  ? const Color(0xffF99F1E)
                                  : const Color(0xffF4F6FF),
                            ),
                          ),
                        )),
                  ),
                ),
                const SizedBox(height: 50,),
                Container(
                  height: 48,
                  margin: const EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        colors: [Color(0xff19184D), Color(0xff530393)]),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignIn()));
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
    );
  }
}