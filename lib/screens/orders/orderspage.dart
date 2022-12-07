import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:pointup/models/models.dart';
import 'package:pointup/screens/orders/orderdetails.dart';
import 'package:pointup/widgets/app_text.dart';
import 'package:svg_icon/svg_icon.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> with TickerProviderStateMixin {
  TabController? _tabcontroller;

  @override
  void initState() {
    _tabcontroller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabcontroller!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewGradientAppBar(
        title: Center(
          child: AppText(
            text: "Order’s",
            color: Colors.white,
            size: 16,
            fw: FontWeight.bold,
          ),
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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(height: 5,),
            Container(
              height: 40,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(4,),
                    topLeft: Radius.circular(4)
                ),
              ),
              child: TabBar(
                controller: _tabcontroller,
                labelColor: const Color(0xff340E6E),
                unselectedLabelColor: const Color(0xffDADADA),
                indicator:   const BoxDecoration(
                  border: Border(
                    left: BorderSide(width:1,color:Color(0xff340E6E)),
                    right: BorderSide(width: 1,color:Color(0xff340E6E)),
                    top: BorderSide(width: 1,color:Color(0xff340E6E)),
                    bottom: BorderSide(width: 1.5,color: Color(0xffF99F1E))
                  ),
                ),
                tabs: const [
                  Tab(
                    text: 'Redeem Order’s',
                  ),
                  Tab(
                    text: 'Active Order’s',
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabcontroller,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 3, top: 20, bottom: 10),
                              child: AppText(
                                text: "Awaiting for Action",
                                size: 12,
                                fw: FontWeight.bold,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        SizedBox(
                          height: MediaQuery.of(context).size.height,
                          child: ListView.builder(
                              itemCount: vieworders.length,
                              itemBuilder: (BuildContext context, int index) {
                                return InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const OrderDetailsPage()));
                                  },
                                  child: Card(
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(10.0),)
                                    ),
                                    child: Column(
                                      children: [
                                        ListTile(
                                          contentPadding: const EdgeInsets.symmetric(
                                              horizontal: 8, vertical: 2),
                                          title: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Image.asset(
                                                   vieworders[index],
                                                    fit: BoxFit.cover,
                                                    height: 57,
                                                    width: 57,
                                                  ),
                                                  SizedBox(
                                                    width: 130,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                      children: [
                                                        AppText(
                                                          text: redeemitem[index],
                                                          fw: FontWeight.bold,
                                                          size: 12,
                                                          color:
                                                          const Color(0xff444444),
                                                        ),
                                                        const SizedBox(
                                                          height: 3,
                                                        ),
                                                        AppText(
                                                          text: redeemname[index],
                                                          size: 10,
                                                          color:
                                                          const Color(0xff444444),
                                                        ),
                                                        const SizedBox(height: 3,),
                                                        RichText(
                                                          overflow:
                                                          TextOverflow.ellipsis,
                                                          maxLines: 1,
                                                          text: const TextSpan(
                                                              text: 'Qty :',
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      0xff333333),
                                                                  fontSize: 10,
                                                                  fontWeight: FontWeight.w600),
                                                              children: [
                                                                TextSpan(
                                                                    text: '1\n',
                                                                    style: TextStyle(
                                                                        color: Color(
                                                                            0xff333333),
                                                                        fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                        fontSize:
                                                                        10)),
                                                              ]),
                                                        ),

                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    child: Column(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                      children: [
                                                        const SizedBox(
                                                          height: 5.0,
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.only(left: 50),
                                                          child: AppText(
                                                            text:
                                                            "4560 Pts",
                                                            color:
                                                            const Color(0xffF99F1E),
                                                            size: 12,
                                                            fw: FontWeight.bold,
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          height: 3,
                                                        ),
                                                        AppText(
                                                          text:
                                                          "Order Ref# 103785647",
                                                          color:
                                                          const Color(0xffA1A2A8),
                                                          size: 10,
                                                        ),
                                                        const SizedBox(
                                                          height: 3,
                                                        ),
                                                        RichText(
                                                          maxLines: 1,
                                                          text: const TextSpan(
                                                              text: '  13/04/2022,',
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      0xffA1A2A8),
                                                                  fontSize: 10),
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                    '10:30 AM\n',
                                                                    style: TextStyle(
                                                                        fontSize: 10,
                                                                        color: Color(
                                                                            0xffA1A2A8))),
                                                              ]),
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 3, top: 20, bottom: 10),
                              child: AppText(
                                text: "Actioned Order’s List",
                                size: 12,
                                fw: FontWeight.bold,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        SizedBox(
                          height: MediaQuery.of(context).size.height,
                          child: ListView.builder(
                              itemCount: vieworders.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Card(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10.0),)
                                  ),
                                  child: Column(
                                    children: [
                                      ListTile(
                                        contentPadding: const EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 2),
                                        title: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Image.asset(
                                                  vieworders[index],
                                                  fit: BoxFit.cover,
                                                  height: 57,
                                                  width: 57,
                                                ),
                                                SizedBox(
                                                  width: 130,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    children: [
                                                      AppText(
                                                        text: redeemitem[index],
                                                        fw: FontWeight.bold,
                                                        size: 12,
                                                        color:
                                                        const Color(0xff444444),
                                                      ),
                                                      const SizedBox(
                                                        height: 3,
                                                      ),
                                                      AppText(
                                                        text: redeemname[index],
                                                        size: 10,
                                                        color:
                                                        const Color(0xff444444),
                                                      ),
                                                      const SizedBox(height: 3,),
                                                      RichText(
                                                        overflow:
                                                        TextOverflow.ellipsis,
                                                        maxLines: 1,
                                                        text: const TextSpan(
                                                            text: 'Qty :',
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xff333333),
                                                                fontSize: 10,
                                                                fontWeight: FontWeight.w600),
                                                            children: [
                                                              TextSpan(
                                                                  text: '1\n',
                                                                  style: TextStyle(
                                                                      color: Color(
                                                                          0xff333333),
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                      fontSize:
                                                                      10)),
                                                            ]),
                                                      ),

                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    children: [
                                                      const SizedBox(
                                                        height: 5.0,
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 50),
                                                        child: AppText(
                                                          text:
                                                          "4560 Pts",
                                                          color:
                                                          const Color(0xffF99F1E),
                                                          size: 12,
                                                          fw: FontWeight.bold,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        height: 3,
                                                      ),
                                                      AppText(
                                                        text:
                                                        "Order Ref# 103785647",
                                                        color:
                                                        const Color(0xffA1A2A8),
                                                        size: 10,
                                                      ),
                                                      const SizedBox(
                                                        height: 3,
                                                      ),
                                                      RichText(
                                                        maxLines: 1,
                                                        text: const TextSpan(
                                                            text: '  13/04/2022,',
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xffA1A2A8),
                                                                fontSize: 10),
                                                            children: [
                                                              TextSpan(
                                                                  text:
                                                                  '10:30 AM\n',
                                                                  style: TextStyle(
                                                                      fontSize: 10,
                                                                      color: Color(
                                                                          0xffA1A2A8))),
                                                            ]),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
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
              // child: Padding(
              //   padding: EdgeInsets.only(top: 110,),
              //   child: Center(child: Text('MY WORLD Fashion',style: TextStyle(color: Color(0xff19184D),fontWeight: FontWeight.w800),)),
              // ),
            ),
          ),
          Expanded(
            flex: 2,
            child: ListView(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: 20,
              ),
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
                  onTap: () {},
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
                  onTap: () {},
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
                    child: Center(
                        child: AppText(
                      text: "Sign Out",
                      size: 12,
                      fw: FontWeight.bold,
                      color: Colors.white,
                    )),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText(
                      text: "Version :1.4 (1.0)",
                      size: 10,
                      color: const Color(0xffA1A2A8),
                      fw: FontWeight.w600,
                    )
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
