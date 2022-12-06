import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:pointup/models/models.dart';
import 'package:pointup/screens/DrawerItems/privacyandpolicy.dart';
import 'package:pointup/screens/DrawerItems/termsandcondition.dart';
import 'package:pointup/screens/counter/orderredeempage.dart';
import 'package:pointup/screens/counter/pointscreditpage.dart';
import 'package:pointup/screens/counter/pointsredeempage.dart';
import 'package:pointup/screens/counter/transactionpage.dart';
import 'package:pointup/widgets/app_text.dart';
import 'package:svg_icon/svg_icon.dart';

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
        title: AppText(
          text: "Hello ,MY WORLD  Fashion !",
          color: Colors.white,
          size: 14,
          fw: FontWeight.bold,
        ),
        actions: <Widget>[
          Image.asset("assets/images/noti.png"),
          // IconButton(
          //     onPressed: () {}, icon: const SvgIcon("assets/icons/notifi.svg"))
        ],
        gradient: const LinearGradient(
            colors: [Color(0xff19184D), Color(0xff530393)]),
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
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const PointsCreditPage()));
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
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const PointsRedeemPage()));
                              },
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
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(children: [
                        Expanded(
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const OrderRedeemPage()));
                            },
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
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const TransactionPage()));
                            },
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
      child: Column(
        children: [
           const Expanded(
            flex: 1,
            child: DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xff19184D), Color(0xff530393)]),
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/logos.png",
                    ),
                    alignment: Alignment.center),
              ),
              child: Padding(
                padding: EdgeInsets.only(bottom: 250, right: 260),
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  size: 20,
                  color: Color(0xffFFFFFF),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: ListView(
              padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20,),
              children: [
                ListTile(
                  leading: const SvgIcon(
                    "assets/icons/qrcode.svg",
                    color: Color(0xff19184D),
                    height: 16,
                    width: 16,
                  ),
                  title: const Text(
                    'My Shop QR Code',
                    style: TextStyle(
                      color: Color(0xff19184D),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Color(0xff19184D),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const SvgIcon(
                    "assets/icons/user.svg",
                    color: Color(0xff19184D),
                    height: 16,
                    width: 16,
                  ),
                  title: const Text(
                    'User Information',
                    style: TextStyle(
                      color: Color(0xff19184D),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Color(0xff19184D),
                  ),
                  onTap: () {},
                ),
                ListTile(
                   leading: const SvgIcon(
                    "assets/icons/passwordlock.svg",
                    color: Color(0xff19184D),
                    height: 16,
                    width: 16,
                  ),
                  title: const Text(
                        'Change Password',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff19184D),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Color(0xff19184D),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const SvgIcon(
                    "assets/icons/report.svg",
                    color: Color(0xff19184D),
                    height: 16,
                    width: 16,
                  ),
                  title: const Text(
                    'Reports',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff19184D),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Color(0xff19184D),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const SvgIcon(
                    "assets/icons/review.svg",
                    color: Color(0xff19184D),
                    height: 16,
                    width: 16,
                  ),
                  title: const Text(
                    'Customer Review & Rating',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff19184D),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Color(0xff19184D),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const SvgIcon(
                    "assets/icons/contact.svg",
                    color: Color(0xff19184D),
                    height: 16,
                    width: 16,
                  ),
                  title: const Text(
                    'Contact Us',
                    style: TextStyle(
                      color: Color(0xff19184D),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Color(0xff19184D),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const SvgIcon(
                    "assets/icons/termsconditions.svg",
                    color: Color(0xff19184D),
                    height: 16,
                    width: 16,
                  ),
                  title: const Text(
                    'Terms & Conditions',
                    style: TextStyle(
                      color: Color(0xff19184D),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Color(0xff19184D),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>TermsAndCondition()));
                  },
                ),
                ListTile(
                  leading: const SvgIcon(
                    "assets/icons/policy.svg",
                    color: Color(0xff19184D),
                    height: 16,
                    width: 16,
                  ),
                  title: const Text(
                    'Privacy & Policy',
                    style: TextStyle(
                      color: Color(0xff19184D),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Color(0xff19184D),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PrivacyAndPolicy()));

                  },
                ),
                Padding(
                 padding: const EdgeInsets.all(15.0),
                 child: Container(
                   height: 42,
                   width: 240,
                   decoration: BoxDecoration(
                     gradient: const LinearGradient(
                         colors: [Color(0xff19184D), Color(0xff530393)]),
                     borderRadius: BorderRadius.circular(10),
                   ),
                   child: Center(child: AppText(text: "Sign Out",size: 12,fw: FontWeight.bold,color: Colors.white,)),
                 ),
               ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText(text: "Version :1.4 (1.0)",size: 10,color: const Color(0xffA1A2A8),fw: FontWeight.w600,)
                  ],
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}
