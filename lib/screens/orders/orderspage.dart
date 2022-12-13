import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:pointup/models/models.dart';
import 'package:pointup/screens/customdrwer.dart';
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
      drawer: CustomDrwer(),
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
}
