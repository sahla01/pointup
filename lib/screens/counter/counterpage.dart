import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:pointup/models/models.dart';
import 'package:pointup/widgets/app_text.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final CarouselController _controller = CarouselController();
  final int _activePage = 0;

  void initstate() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewGradientAppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 7.0, left: 5, bottom: 5.0),
          child: Row(
            children: [
              AppText(
                text: "Hello ,MY WORLD  Fashion !",
                color: Colors.white,
                size: 14,
                fw: FontWeight.bold,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: IconButton(
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationView()));
                    },
                    icon: Stack(children: const [
                      Icon(
                        Icons.notifications_none_outlined,
                        color: Colors.white,
                        size: 20,
                      ),
                      Positioned(
                          left: 2,
                          child: Icon(
                            Icons.brightness_1,
                            color: Color(0xffF99F1E),
                            size: 9.0,
                          ))
                    ])),
              ),
            ],
          ),
        ),
        gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromRGBO(25, 24, 77, 1),
              Color.fromRGBO(25, 24, 100, 1),
              Color.fromRGBO(28, 43, 174, 1)
            ]),
      ),
      drawer: _customDrwer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 120,
                scrollDirection: Axis.horizontal,
                autoPlay: true,
                aspectRatio: 2.0,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {});
                },
                enlargeCenterPage: true,
              ),
              items: sliderList
                  .map((item) => Container(
                        margin: const EdgeInsets.all(10),
                        child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8.0)),
                            child: Stack(
                              children: <Widget>[
                                Image.asset(item,
                                    fit: BoxFit.cover, width: 1000.0),
                                Positioned(
                                  bottom: 0.0,
                                  left: 0.0,
                                  right: 0.0,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color.fromARGB(200, 0, 0, 0),
                                          Color.fromARGB(0, 0, 0, 0)
                                        ],
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ))
                  .toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(
                      sliderList.length,
                      (index) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: InkWell(
                              onTap: () {
                                _controller.animateToPage(index,
                                    duration: const Duration(milliseconds: 300),
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
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AppText(
                        text: "Customer At Your Counter",
                        size: 14,
                        fw: FontWeight.bold,
                        color: const Color(0xff333333),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              width: 158,
                              height: 80,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [Color(0xff125DEF),Color(0xff22ECBB)],
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AppText(text: "Points Credit",size: 14,fw: FontWeight.w700,color: Colors.white,),
                                  const SizedBox(width: 10,),
                                  const Icon(Icons.arrow_forward,size: 15,color: Colors.white,),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Container(
                              width: 158,
                              height: 80,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [Color(0xffEF9712),Color(0xffE8EC22)],
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AppText(text: "Points Redeem",size: 14,fw: FontWeight.w700,color: Colors.white,),
                                  const SizedBox(width: 10,),
                                  const Icon(Icons.arrow_forward,size: 15,color: Colors.white,),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(children: [
                        Expanded(
                          child: Container(
                            width: 158,
                            height: 80,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [Color(0xffEF12D9),Color(0xffB722EC)],
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AppText(text: "Order Redeem",size: 14,fw: FontWeight.w700,color: Colors.white,),
                                const SizedBox(width: 10,),
                                const Icon(Icons.arrow_forward,size: 15,color: Colors.white,),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Container(
                            width: 158,
                            height: 80,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [Color(0xff73BE14),Color(0xff11AE92)],
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AppText(text: "Transactions",size: 14,fw: FontWeight.w700,color: Colors.white,),
                                const SizedBox(width: 10,),
                                const Icon(Icons.arrow_forward,size: 15,color: Colors.white,),
                              ],
                            ),
                          ),
                        )
                      ]),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _customDrwer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xff19184D),
            ),
            child: Text(''),
          ),
          ListTile(
            title: const Text('two'),
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => EnquiryForm(),
              //   ),
              // );
            },
          ),
          ListTile(
            title: const Text('three'),
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) =>ViewFeedback(),
              //   ),
              //);
            },
          ),
          ListTile(
            title: const Text('Logout'),
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) =>LoginPage(),
              //   ),
              //);
            },
          ),
        ],
      ),
    );
  }
}
