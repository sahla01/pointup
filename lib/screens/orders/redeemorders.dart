import 'package:flutter/material.dart';
import 'package:pointup/models/models.dart';
import 'package:pointup/screens/orders/orderdetails.dart';
import 'package:pointup/widgets/app_text.dart';

class RedeemOrders extends StatefulWidget {
  const RedeemOrders({Key? key}) : super(key: key);

  @override
  State<RedeemOrders> createState() => _RedeemOrdersState();
}

class _RedeemOrdersState extends State<RedeemOrders> {
  int? passIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
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
    );
  }
}
