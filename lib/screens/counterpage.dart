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
  int _activePage = 0;

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
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 140,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List<Widget>.generate(
                        sliderList.length,
                        (index) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: InkWell(
                                onTap: () {
                                  _controller.animateToPage(index,
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
              ],
            ),
            Padding(
                padding: const EdgeInsets.all(40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText(
                      text: "Customer At Your Counter",
                      size: 14,
                      fw: FontWeight.bold,
                      color: const Color(0xff333333),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                  ],
                ))
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
