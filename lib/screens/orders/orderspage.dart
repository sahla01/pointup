import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:pointup/models/models.dart';
import 'package:pointup/screens/customdrwer.dart';
import 'package:pointup/screens/orders/orderdetails.dart';
import 'package:pointup/widgets/app_text.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> with TickerProviderStateMixin {
  TabController? _tabcontroller;
 int? passIndex;

  var dropdownvalue;

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
          InkWell(
              onTap: (){
                Navigator.pushNamed(context, '/notification');
              },
              child: Image.asset("assets/images/noti.png")),
        ],
        gradient: const LinearGradient(
            colors: [Color(0xff19184D), Color(0xff530393)]),
      ),
      drawer: const CustomDrwer(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 40,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(
                      4,
                    ),
                    topLeft: Radius.circular(4)),
              ),
              child: TabBar(
                controller: _tabcontroller,
                labelColor: const Color(0xff340E6E),
                unselectedLabelColor: const Color(0xffDADADA),
                indicator: const BoxDecoration(
                  border: Border(
                      left: BorderSide(width: 1, color: Color(0xff340E6E)),
                      right: BorderSide(width: 1, color: Color(0xff340E6E)),
                      top: BorderSide(width: 1, color: Color(0xff340E6E)),
                      bottom: BorderSide(width: 1.5, color: Color(0xffF99F1E))),
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
                              padding: const EdgeInsets.only(
                                  left: 3, top: 20, bottom: 10),
                              child: AppText(
                                text: "Awaiting for Action",
                                size: 12,
                                fw: FontWeight.bold,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SingleChildScrollView(
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height,
                            child: ListView.builder(
                                itemCount: ordersLayout.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return InkWell(
                                    onTap: () {
                                      passIndex=index;
                                      // Navigator.pushNamed(context, '/orderdetails');
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                   OrderDetailsPage(
                                                    pass_index: passIndex,

                                                  )));
                                    },
                                    child: Card(
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                        Radius.circular(10.0),
                                      )),
                                      child: Column(
                                        children: [
                                          ListTile(
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 8, vertical: 2),
                                            title: Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  mainAxisSize: MainAxisSize.max,
                                                  children: [
                                                    Image.asset(
                                                      ordersLayout[index]['image'],
                                                      fit: BoxFit.cover,
                                                      height: 57,
                                                      width: 57,
                                                    ),
                                                    SizedBox(
                                                      width: 130,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          AppText(
                                                            text:
                                                                ordersLayout[index]['pname'],
                                                            fw: FontWeight.bold,
                                                            size: 12,
                                                            color: const Color(
                                                                0xff444444),
                                                          ),
                                                          const SizedBox(
                                                            height: 3,
                                                          ),
                                                          AppText(
                                                            text:
                                                                ordersLayout[index]['sname'],
                                                            size: 10,
                                                            color: const Color(
                                                                0xff444444),
                                                          ),
                                                          const SizedBox(
                                                            height: 3,
                                                          ),
                                                          RichText(
                                                            overflow: TextOverflow
                                                                .ellipsis,
                                                            maxLines: 1,
                                                            text: TextSpan(
                                                                text: 'Qty :',
                                                                style: const TextStyle(
                                                                    color: Color(
                                                                        0xff333333),
                                                                    fontSize: 10,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600),
                                                                children: [
                                                                  TextSpan(
                                                                      text: ordersLayout[index]['qty'],
                                                                      style: const TextStyle(
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
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          const SizedBox(
                                                            height: 5.0,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 50),
                                                            child: AppText(
                                                              text: ordersLayout[index]['pamt']+ " Pts",
                                                              color: const Color(
                                                                  0xffF99F1E),
                                                              size: 12,
                                                              fw: FontWeight.bold,
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            height: 3,
                                                          ),
                                                          AppText(
                                                            text:
                                                               "Order Ref# " +ordersLayout[index]['orderref'],
                                                            color: const Color(
                                                                0xffA1A2A8),
                                                            size: 10,
                                                          ),
                                                          const SizedBox(
                                                            height: 3,
                                                          ),
                                                          RichText(
                                                            maxLines: 1,
                                                            text: TextSpan(
                                                                text: ordersLayout[index]['date'],
                                                                style: const TextStyle(
                                                                    color: Color(
                                                                        0xffA1A2A8),
                                                                    fontSize: 10),
                                                                children: [
                                                                  TextSpan(
                                                                      text: ordersLayout[index]['time'],
                                                                      style: const TextStyle(
                                                                          fontSize:
                                                                              10,
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
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 50,top: 10),
                                child: AppText(
                                  text: "Actioned Order’s List",
                                  size: 12,
                                  fw: FontWeight.bold,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Container(
                                  height: 35,
                                  width: 140,
                                  child: DropdownButtonFormField<String>(
                                    icon:   InkWell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Container(
                                            height: 23,
                                            width: 50,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.rectangle,
                                                border: Border.all(width: 0.5,color: const Color(0xff360E70)),
                                                borderRadius:
                                                BorderRadius.circular(4)),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: const [
                                                Padding(
                                                  padding: EdgeInsets.only(left: 8),
                                                  child: Text('Filter',style: TextStyle(
                                                      fontSize: 10,fontWeight: FontWeight.w600,color: Color(0xff360E70)
                                                  ),),
                                                ),
                                                SizedBox(
                                                  width: 3,
                                                ),
                                                Icon(
                                                    Icons.filter_alt_outlined,
                                                    size: 10,color:
                                                Color(0xff360E70)
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                    value: dropdownvalue,
                                    decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.symmetric(
                                          vertical: 0.0, horizontal: 8),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            width: 1, color: Color(0xffDADADA)),
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              width: 1, color: Color(0xffDADADA)),
                                          borderRadius: BorderRadius.circular(4)),
                                      hintStyle: const TextStyle(height: 1.8,
                                          fontSize: 10, color: Color(0xff333333),fontWeight: FontWeight.w600),
                                      hintText: 'Confirmed',
                                      fillColor: const Color(0xffF4F6FF),
                                      filled: true,
                                    ),
                                    validator: (value) =>
                                    value == null
                                        ? 'field required'
                                        : null,
                                    items: ['Confirmed', 'Cancelled']
                                        .map<DropdownMenuItem<String>>(
                                            (String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value, style: const TextStyle(
                                                fontSize: 10, color: Color(0xff333333),fontWeight: FontWeight.w600),),
                                          );
                                        }).toList(),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownvalue = newValue;
                                      } );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                       dropdownvalue=='Confirmed'?
                       SizedBox(
                          height: MediaQuery.of(context).size.height,
                          child: ListView.builder(
                              itemCount: vieworders.length,
                              itemBuilder: (BuildContext context, int index) {
                                return InkWell(
                                  onTap: (){
                                    Navigator.pushNamed(context, '/confirmorders');
                                  },
                                  child: Card(
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10.0),
                                        )),
                                    child: Column(
                                      children: [
                                        ListTile(
                                          contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 8, vertical: 2),
                                          title: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment
                                                    .spaceBetween,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Image.asset(
                                                    vieworders[index],
                                                    fit: BoxFit.cover,
                                                    height: 57,
                                                    width: 57,
                                                  ),
                                                  SizedBox(
                                                    width: 140,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: [
                                                        AppText(
                                                          text: redeemitem[index],
                                                          fw: FontWeight.bold,
                                                          size: 12,
                                                          color: const Color(
                                                              0xff444444),
                                                        ),
                                                        const SizedBox(
                                                          height: 3,
                                                        ),
                                                        AppText(
                                                          text: redeemname[index],
                                                          size: 10,
                                                          color: const Color(
                                                              0xff444444),
                                                        ),
                                                        const SizedBox(
                                                          height: 3,
                                                        ),
                                                        RichText(
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          maxLines: 1,
                                                          text: const TextSpan(
                                                              text: 'Qty :',
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      0xff333333),
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                              children: [
                                                                TextSpan(
                                                                    text: '01\n',
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
                                                        const SizedBox(
                                                          height: 3,
                                                        ),
                                                        RichText(
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          maxLines: 1,
                                                          text: const TextSpan(
                                                              text: 'Status: ',
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      0xff333333),
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                              children: [
                                                                TextSpan(
                                                                    text: 'Order Confirmed\n',
                                                                    style: TextStyle(
                                                                        color: Color(
                                                                            0xff39AE58),
                                                                        fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                        fontSize:
                                                                        10)),
                                                              ]),
                                                        ),
                                                        // Row(
                                                        //   mainAxisAlignment: MainAxisAlignment.start,
                                                        //   children: [
                                                        //     AppText(text:" Status:",size: 10,fw: FontWeight.w600,color: Color(0xff333333),),
                                                        //     AppText(text: "Order Confirmed",size: 10,fw: FontWeight.w600,color: Color(0xff39AE58),),
                                                        //   ],
                                                        // )

                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    child: Column(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: [
                                                        const SizedBox(
                                                          height: 5.0,
                                                        ),
                                                        Padding(
                                                          padding:
                                                          const EdgeInsets
                                                              .only(left: 50),
                                                          child: AppText(
                                                            text: "4560 Pts",
                                                            color: const Color(
                                                                0xffF99F1E),
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
                                                          color: const Color(
                                                              0xffA1A2A8),
                                                          size: 10,
                                                        ),
                                                        const SizedBox(
                                                          height: 3,
                                                        ),
                                                        RichText(
                                                          maxLines: 1,
                                                          text: const TextSpan(
                                                              text:
                                                              '  13/04/2022,',
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      0xffA1A2A8),
                                                                  fontSize: 10),
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                    '10:30 AM\n',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                        10,
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
                        ): dropdownvalue=='Cancelled'?
                       SizedBox(
                         height: MediaQuery.of(context).size.height,
                         child: ListView.builder(
                             itemCount: vieworders.length,
                             itemBuilder: (BuildContext context, int index) {
                               return InkWell(
                                 onTap: (){
                                   Navigator.pushNamed(context,  '/cancelorders');
                                 },
                                 child: Card(
                                   shape: const RoundedRectangleBorder(
                                       borderRadius: BorderRadius.all(
                                         Radius.circular(10.0),
                                       )),
                                   child: Column(
                                     children: [
                                       ListTile(
                                         contentPadding:
                                         const EdgeInsets.symmetric(
                                             horizontal: 8, vertical: 2),
                                         title: Column(
                                           children: [
                                             Row(
                                               mainAxisAlignment:
                                               MainAxisAlignment
                                                   .spaceBetween,
                                               mainAxisSize: MainAxisSize.max,
                                               children: [
                                                 Image.asset(
                                                   vieworders[index],
                                                   fit: BoxFit.cover,
                                                   height: 57,
                                                   width: 57,
                                                 ),
                                                 SizedBox(
                                                   width: 140,
                                                   child: Column(
                                                     crossAxisAlignment:
                                                     CrossAxisAlignment
                                                         .start,
                                                     children: [
                                                       AppText(
                                                         text: redeemitem[index],
                                                         fw: FontWeight.bold,
                                                         size: 12,
                                                         color: const Color(
                                                             0xff444444),
                                                       ),
                                                       const SizedBox(
                                                         height: 3,
                                                       ),
                                                       AppText(
                                                         text: redeemname[index],
                                                         size: 10,
                                                         color: const Color(
                                                             0xff444444),
                                                       ),
                                                       const SizedBox(
                                                         height: 3,
                                                       ),
                                                       RichText(
                                                         overflow: TextOverflow
                                                             .ellipsis,
                                                         maxLines: 1,
                                                         text: const TextSpan(
                                                             text: 'Qty :',
                                                             style: TextStyle(
                                                                 color: Color(
                                                                     0xff333333),
                                                                 fontSize: 10,
                                                                 fontWeight:
                                                                 FontWeight
                                                                     .w600),
                                                             children: [
                                                               TextSpan(
                                                                   text: '01\n',
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
                                                       const SizedBox(
                                                         height: 3,
                                                       ),
                                                       RichText(
                                                         overflow: TextOverflow
                                                             .ellipsis,
                                                         maxLines: 1,
                                                         text: const TextSpan(
                                                             text: 'Status: ',
                                                             style: TextStyle(
                                                                 color: Color(
                                                                     0xff333333),
                                                                 fontSize: 10,
                                                                 fontWeight:
                                                                 FontWeight
                                                                     .w600),
                                                             children: [
                                                               TextSpan(
                                                                   text:'Cancelled by Shop\n',
                                                                   style: TextStyle(
                                                                       color: Color(
                                                                           0xffEF2253),
                                                                       fontWeight:
                                                                       FontWeight
                                                                           .w600,
                                                                       fontSize:
                                                                       10)),
                                                             ]),
                                                       ),
                                                       // Row(
                                                       //   mainAxisAlignment: MainAxisAlignment.start,
                                                       //   children: [
                                                       //     AppText(text:" Status:",size: 10,fw: FontWeight.w600,color: Color(0xff333333),),
                                                       //     AppText(text: "Order Confirmed",size: 10,fw: FontWeight.w600,color: Color(0xff39AE58),),
                                                       //   ],
                                                       // )

                                                     ],
                                                   ),
                                                 ),
                                                 SizedBox(
                                                   child: Column(
                                                     crossAxisAlignment:
                                                     CrossAxisAlignment
                                                         .start,
                                                     children: [
                                                       const SizedBox(
                                                         height: 5.0,
                                                       ),
                                                       Padding(
                                                         padding:
                                                         const EdgeInsets
                                                             .only(left: 50),
                                                         child: AppText(
                                                           text: "4560 Pts",
                                                           color: const Color(
                                                               0xffF99F1E),
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
                                                         color: const Color(
                                                             0xffA1A2A8),
                                                         size: 10,
                                                       ),
                                                       const SizedBox(
                                                         height: 3,
                                                       ),
                                                       RichText(
                                                         maxLines: 1,
                                                         text: const TextSpan(
                                                             text:
                                                             '  13/04/2022,',
                                                             style: TextStyle(
                                                                 color: Color(
                                                                     0xffA1A2A8),
                                                                 fontSize: 10),
                                                             children: [
                                                               TextSpan(
                                                                   text:
                                                                   '10:30 AM\n',
                                                                   style: TextStyle(
                                                                       fontSize:
                                                                       10,
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
                       ):SizedBox(
                         height: MediaQuery.of(context).size.height,
                         child: ListView.builder(
                             itemCount: vieworders.length,
                             itemBuilder: (BuildContext context, int index) {
                               return InkWell(
                                 onTap: (){
                                   Navigator.pushNamed(context, '/confirmorders');
                                 },
                                 child: Card(
                                   shape: const RoundedRectangleBorder(
                                       borderRadius: BorderRadius.all(
                                         Radius.circular(10.0),
                                       )),
                                   child: Column(
                                     children: [
                                       ListTile(
                                         contentPadding:
                                         const EdgeInsets.symmetric(
                                             horizontal: 8, vertical: 2),
                                         title: Column(
                                           children: [
                                             Row(
                                               mainAxisAlignment:
                                               MainAxisAlignment
                                                   .spaceBetween,
                                               mainAxisSize: MainAxisSize.max,
                                               children: [
                                                 Image.asset(
                                                   vieworders[index],
                                                   fit: BoxFit.cover,
                                                   height: 57,
                                                   width: 57,
                                                 ),
                                                 SizedBox(
                                                   width: 140,
                                                   child: Column(
                                                     crossAxisAlignment:
                                                     CrossAxisAlignment
                                                         .start,
                                                     children: [
                                                       AppText(
                                                         text: redeemitem[index],
                                                         fw: FontWeight.bold,
                                                         size: 12,
                                                         color: const Color(
                                                             0xff444444),
                                                       ),
                                                       const SizedBox(
                                                         height: 3,
                                                       ),
                                                       AppText(
                                                         text: redeemname[index],
                                                         size: 10,
                                                         color: const Color(
                                                             0xff444444),
                                                       ),
                                                       const SizedBox(
                                                         height: 3,
                                                       ),
                                                       RichText(
                                                         overflow: TextOverflow
                                                             .ellipsis,
                                                         maxLines: 1,
                                                         text: const TextSpan(
                                                             text: 'Qty :',
                                                             style: TextStyle(
                                                                 color: Color(
                                                                     0xff333333),
                                                                 fontSize: 10,
                                                                 fontWeight:
                                                                 FontWeight
                                                                     .w600),
                                                             children: [
                                                               TextSpan(
                                                                   text: '01\n',
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
                                                       const SizedBox(
                                                         height: 3,
                                                       ),
                                                       RichText(
                                                         overflow: TextOverflow
                                                             .ellipsis,
                                                         maxLines: 1,
                                                         text: const TextSpan(
                                                             text: 'Status: ',
                                                             style: TextStyle(
                                                                 color: Color(
                                                                     0xff333333),
                                                                 fontSize: 10,
                                                                 fontWeight:
                                                                 FontWeight
                                                                     .w600),
                                                             children: [
                                                               TextSpan(
                                                                   text: 'Order Confirmed\n',
                                                                   style: TextStyle(
                                                                       color: Color(
                                                                           0xff39AE58),
                                                                       fontWeight:
                                                                       FontWeight
                                                                           .w600,
                                                                       fontSize:
                                                                       10)),
                                                             ]),
                                                       ),
                                                       // Row(
                                                       //   mainAxisAlignment: MainAxisAlignment.start,
                                                       //   children: [
                                                       //     AppText(text:" Status:",size: 10,fw: FontWeight.w600,color: Color(0xff333333),),
                                                       //     AppText(text: "Order Confirmed",size: 10,fw: FontWeight.w600,color: Color(0xff39AE58),),
                                                       //   ],
                                                       // )

                                                     ],
                                                   ),
                                                 ),
                                                 SizedBox(
                                                   child: Column(
                                                     crossAxisAlignment:
                                                     CrossAxisAlignment
                                                         .start,
                                                     children: [
                                                       const SizedBox(
                                                         height: 5.0,
                                                       ),
                                                       Padding(
                                                         padding:
                                                         const EdgeInsets
                                                             .only(left: 50),
                                                         child: AppText(
                                                           text: "4560 Pts",
                                                           color: const Color(
                                                               0xffF99F1E),
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
                                                         color: const Color(
                                                             0xffA1A2A8),
                                                         size: 10,
                                                       ),
                                                       const SizedBox(
                                                         height: 3,
                                                       ),
                                                       RichText(
                                                         maxLines: 1,
                                                         text: const TextSpan(
                                                             text:
                                                             '  13/04/2022,',
                                                             style: TextStyle(
                                                                 color: Color(
                                                                     0xffA1A2A8),
                                                                 fontSize: 10),
                                                             children: [
                                                               TextSpan(
                                                                   text:
                                                                   '10:30 AM\n',
                                                                   style: TextStyle(
                                                                       fontSize:
                                                                       10,
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

                        // SizedBox(
                        //   height: MediaQuery.of(context).size.height,
                        //   child: ListView.builder(
                        //       itemCount: vieworders.length,
                        //       itemBuilder: (BuildContext context, int index) {
                        //         return InkWell(
                        //           onTap: (){
                        //             Navigator.push(context, MaterialPageRoute(builder: (context)=> const ConfirmedOrders()));
                        //           },
                        //           child: Card(
                        //             shape: const RoundedRectangleBorder(
                        //                 borderRadius: BorderRadius.all(
                        //                   Radius.circular(10.0),
                        //                 )),
                        //             child: Column(
                        //               children: [
                        //                 ListTile(
                        //                   contentPadding:
                        //                   const EdgeInsets.symmetric(
                        //                       horizontal: 8, vertical: 2),
                        //                   title: Column(
                        //                     children: [
                        //                       Row(
                        //                         mainAxisAlignment:
                        //                         MainAxisAlignment
                        //                             .spaceBetween,
                        //                         mainAxisSize: MainAxisSize.max,
                        //                         children: [
                        //                           Image.asset(
                        //                             vieworders[index],
                        //                             fit: BoxFit.cover,
                        //                             height: 57,
                        //                             width: 57,
                        //                           ),
                        //                           SizedBox(
                        //                             width: 140,
                        //                             child: Column(
                        //                               crossAxisAlignment:
                        //                               CrossAxisAlignment
                        //                                   .start,
                        //                               children: [
                        //                                 AppText(
                        //                                   text: redeemitem[index],
                        //                                   fw: FontWeight.bold,
                        //                                   size: 12,
                        //                                   color: const Color(
                        //                                       0xff444444),
                        //                                 ),
                        //                                 const SizedBox(
                        //                                   height: 3,
                        //                                 ),
                        //                                 AppText(
                        //                                   text: redeemname[index],
                        //                                   size: 10,
                        //                                   color: const Color(
                        //                                       0xff444444),
                        //                                 ),
                        //                                 const SizedBox(
                        //                                   height: 3,
                        //                                 ),
                        //                                 RichText(
                        //                                   overflow: TextOverflow
                        //                                       .ellipsis,
                        //                                   maxLines: 1,
                        //                                   text: const TextSpan(
                        //                                       text: 'Qty :',
                        //                                       style: TextStyle(
                        //                                           color: Color(
                        //                                               0xff333333),
                        //                                           fontSize: 10,
                        //                                           fontWeight:
                        //                                           FontWeight
                        //                                               .w600),
                        //                                       children: [
                        //                                         TextSpan(
                        //                                             text: '01\n',
                        //                                             style: TextStyle(
                        //                                                 color: Color(
                        //                                                     0xff333333),
                        //                                                 fontWeight:
                        //                                                 FontWeight
                        //                                                     .w600,
                        //                                                 fontSize:
                        //                                                 10)),
                        //                                       ]),
                        //                                 ),
                        //                                 const SizedBox(
                        //                                   height: 3,
                        //                                 ),
                        //                                 RichText(
                        //                                   overflow: TextOverflow
                        //                                       .ellipsis,
                        //                                   maxLines: 1,
                        //                                   text: const TextSpan(
                        //                                       text: 'Status: ',
                        //                                       style: TextStyle(
                        //                                           color: Color(
                        //                                               0xff333333),
                        //                                           fontSize: 10,
                        //                                           fontWeight:
                        //                                           FontWeight
                        //                                               .w600),
                        //                                       children: [
                        //                                         TextSpan(
                        //                                             text: 'Cancelled by shop\n',
                        //                                             style: TextStyle(
                        //                                                 color: Color(
                        //                                                     0xffEF2253),
                        //                                                 fontWeight:
                        //                                                 FontWeight
                        //                                                     .w600,
                        //                                                 fontSize:
                        //                                                 10)),
                        //                                       ]),
                        //                                 ),
                        //                                 // Row(
                        //                                 //   mainAxisAlignment: MainAxisAlignment.start,
                        //                                 //   children: [
                        //                                 //     AppText(text:" Status:",size: 10,fw: FontWeight.w600,color: Color(0xff333333),),
                        //                                 //     AppText(text: "Order Confirmed",size: 10,fw: FontWeight.w600,color: Color(0xff39AE58),),
                        //                                 //   ],
                        //                                 // )
                        //
                        //                               ],
                        //                             ),
                        //                           ),
                        //                           SizedBox(
                        //                             child: Column(
                        //                               crossAxisAlignment:
                        //                               CrossAxisAlignment
                        //                                   .start,
                        //                               children: [
                        //                                 const SizedBox(
                        //                                   height: 5.0,
                        //                                 ),
                        //                                 Padding(
                        //                                   padding:
                        //                                   const EdgeInsets
                        //                                       .only(left: 50),
                        //                                   child: AppText(
                        //                                     text: "4560 Pts",
                        //                                     color: const Color(
                        //                                         0xffF99F1E),
                        //                                     size: 12,
                        //                                     fw: FontWeight.bold,
                        //                                   ),
                        //                                 ),
                        //                                 const SizedBox(
                        //                                   height: 3,
                        //                                 ),
                        //                                 AppText(
                        //                                   text:
                        //                                   "Order Ref# 103785647",
                        //                                   color: const Color(
                        //                                       0xffA1A2A8),
                        //                                   size: 10,
                        //                                 ),
                        //                                 const SizedBox(
                        //                                   height: 3,
                        //                                 ),
                        //                                 RichText(
                        //                                   maxLines: 1,
                        //                                   text: const TextSpan(
                        //                                       text:
                        //                                       '  13/04/2022,',
                        //                                       style: TextStyle(
                        //                                           color: Color(
                        //                                               0xffA1A2A8),
                        //                                           fontSize: 10),
                        //                                       children: [
                        //                                         TextSpan(
                        //                                             text:
                        //                                             '10:30 AM\n',
                        //                                             style: TextStyle(
                        //                                                 fontSize:
                        //                                                 10,
                        //                                                 color: Color(
                        //                                                     0xffA1A2A8))),
                        //                                       ]),
                        //                                 ),
                        //                               ],
                        //                             ),
                        //                           )
                        //                         ],
                        //                       ),
                        //                     ],
                        //                   ),
                        //                 ),
                        //               ],
                        //             ),
                        //           ),
                        //         );
                        //       }),
                        // ),,
                      ],
                    ),
                  ),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
