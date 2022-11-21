import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:pointup/models/models.dart';
import 'package:pointup/screens/counter/pointscreditpage.dart';
import 'package:pointup/widgets/app_text.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int currentPos = 0;

  void initstate() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewGradientAppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppText(
              text: "Hello ,MY WORLD  Fashion !",
              color: Colors.white,
              size: 14,
              fw: FontWeight.bold,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60, top: 5),
              child: SizedBox(
                width: 30,
                height: 30,
                child: Stack(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 10, top: 4),
                      child: Icon(
                        Icons.notifications_outlined,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, bottom: 10),
                      child: SizedBox(
                        width: 9,
                        height: 9,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffF99F1E),
                          ),
                          child: const Center(
                            child: Text(
                              "2",
                              // _counter.toString(),
                              style: TextStyle(
                                  fontSize: 8, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
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
                  setState(() {
                    currentPos = index;
                  });
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
              children: sliderList.map((url) {
                int index = sliderList.indexOf(url);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentPos == index
                        ? const Color(0xffF99F1E)
                        : const Color(0xffF4F6FF),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(
              height: 10,
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
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>PointsCreditPage()));
                              },
                              child: Container(
                                width: 158,
                                height: 80,
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color(0xff125DEF),
                                      Color(0xff22ECBB)
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    AppText(
                                      text: "Points Credit",
                                      size: 14,
                                      fw: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Icon(
                                      Icons.arrow_forward,
                                      size: 15,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
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
                                  colors: [
                                    Color(0xffEF9712),
                                    Color(0xffE8EC22)
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AppText(
                                    text: "Points Redeem",
                                    size: 14,
                                    fw: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Icon(
                                    Icons.arrow_forward,
                                    size: 15,
                                    color: Colors.white,
                                  ),
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
                                colors: [Color(0xffEF12D9), Color(0xffB722EC)],
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AppText(
                                  text: "Order Redeem",
                                  size: 14,
                                  fw: FontWeight.w700,
                                  color: Colors.white,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Icon(
                                  Icons.arrow_forward,
                                  size: 15,
                                  color: Colors.white,
                                ),
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
                                colors: [Color(0xff73BE14), Color(0xff11AE92)],
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AppText(
                                  text: "Transactions",
                                  size: 14,
                                  fw: FontWeight.w700,
                                  color: Colors.white,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Icon(
                                  Icons.arrow_forward,
                                  size: 15,
                                  color: Colors.white,
                                ),
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
