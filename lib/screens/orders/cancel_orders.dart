import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:pointup/screens/orders/orders_page.dart';
import 'package:pointup/widgets/app_text.dart';

class CancelOrders extends StatefulWidget {
  const CancelOrders({Key? key}) : super(key: key);

  @override
  State<CancelOrders> createState() => _CancelOrdersState();
}

class _CancelOrdersState extends State<CancelOrders> {
  TextEditingController reasoncontroler= TextEditingController();

  final Shader linearGradient = const LinearGradient(
    colors: <Color>[Color(0xff19184D), Color(0xff530393)],
  ).createShader(
    const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: NewGradientAppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  size: 15,
                  color: Colors.white,
                ),
              );
            },
          ),
          title: Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 50),
              child: AppText(
                txtalign: TextAlign.left,
                text: "Order’s",
                color: Colors.white,
                size: 16,
                fw: FontWeight.bold,
              ),
            ),
          ),
          gradient: const LinearGradient(
              colors: [Color(0xff19184D), Color(0xff530393)]),
        ),
        body: Container(
          child:  Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: AppText(
                      text: "Order’s Details",
                      size: 12,
                      fw: FontWeight.bold,
                      color: const Color(0xff333333),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0),)
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        contentPadding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                        title: Column(
                          children: [
                            const SizedBox(
                              height: 5.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Image.asset('assets/images/shoe.png',fit:BoxFit.cover,height: 89,width: 89,),
                                SizedBox(
                                  width: 120,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 5.0,
                                      ),
                                      AppText(
                                        text: 'PUCKA',
                                        fw: FontWeight.bold,
                                        size: 12,
                                        color: const Color(0xff19184D),
                                      ),
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      AppText(
                                        text:  'Men’s Sports Shoe',
                                        size: 10,
                                        color: const Color(0xff19184D),
                                      ),
                                      RichText(
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        text: const TextSpan(
                                            text: 'Pts  ',
                                            style: TextStyle(
                                                color: Color(0xffF99F1E),
                                                fontSize: 10),
                                            children: [
                                              TextSpan(
                                                  text: '4560 \n',
                                                  style: TextStyle(
                                                      color: Color(0xffF99F1E),
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 12)),
                                            ]),
                                      ),
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      RichText(
                                        maxLines: 1,
                                        text: const TextSpan(
                                            text: '₹    ',
                                            style: TextStyle(
                                                color: Color(0xff333333),
                                                fontSize: 13.0),
                                            children: [
                                              TextSpan(
                                                  text: '2280.00\n',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 12,
                                                      color: Color(0xff19184D))),
                                            ]),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 5.0,
                                      ),
                                      AppText(
                                        text: "Order Ref# 103785647",
                                        color: const Color(0xff333333),
                                        size: 10,
                                        fw: FontWeight.bold,
                                      ),
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      RichText(
                                        maxLines: 1,
                                        text: const TextSpan(
                                            text: '  13/04/2022,',
                                            style: TextStyle(
                                                color: Color(0xffA1A2A8),
                                                fontSize: 10),
                                            children: [
                                              TextSpan(
                                                  text: '10:30 AM\n',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color: Color(0xffA1A2A8))),
                                            ]),
                                      ),
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 73),
                                        child: AppText(
                                          text: "Status",
                                          size: 10,
                                          fw: FontWeight.bold,
                                          color: const Color(0xff333333),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      AppText(
                                        text: "Order Cancelled by shop",
                                        size: 10,
                                        color: const Color(0xffEF2253),
                                        fw: FontWeight.w600,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: AppText(
                                  text: "Qty",
                                  size: 10,
                                  fw: FontWeight.bold,
                                  color: const Color(0xff333333),
                                ),
                              ),
                              const SizedBox(height: 10.0,),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: AppText(text: "01",size: 10,color: const Color(0xff333333),),
                              ),
                            ],
                          ),
                          const SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(
                                text: "Size",
                                size: 10,
                                fw: FontWeight.bold,
                                color: const Color(0xff333333),
                              ),
                              const SizedBox(height: 10.0,),
                              AppText(text: "Shop Trail",size: 10,color: const Color(0xff333333),),
                            ],
                          ),
                          const SizedBox(width: 10,),
                          Padding(
                            padding: const EdgeInsets.only(right: 120),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText(
                                  text: "Color",
                                  size: 10,
                                  fw: FontWeight.bold,
                                  color: const Color(0xff333333),
                                ),
                                const SizedBox(height: 10.0,),
                                AppText(text: "Shop Trail",size: 10,color: const Color(0xff333333),),
                              ],
                            ),
                          )
                        ],
                      ),
                      const Divider(
                        color: Color(0xffDADADA),
                        thickness: 0.5,
                        indent: 10,
                        endIndent: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              AppText(
                                text: "Total",
                                size: 14,
                                fw: FontWeight.bold,
                                color: const Color(0xff19184D),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              AppText(
                                  text: "Pts",
                                  size: 10,
                                  fw: FontWeight.w600,
                                  color: const Color(0xff19184D)),
                              const SizedBox(
                                width: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: AppText(
                                  text: "4560",
                                  size: 12,
                                  fw: FontWeight.bold,
                                  color: const Color(0xff19184D),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              AppText(
                                text: "₹",
                                color: const Color(0xff333333),
                                size: 14,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: AppText(
                                  text: "2280.00",
                                  size: 12,
                                  fw: FontWeight.bold,
                                  color: const Color(0xff19184D),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppText(text: "Cancellation Reason",size: 10,fw: FontWeight.bold,color: const Color(0xff333333),),
                                  const SizedBox(height: 8.0,),
                                  Container(
                                    width: 307,
                                    height: 59,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(width: 0.5,color: const Color(0xffDADADA))
                                    ),
                                    child:  Row(
                                      mainAxisAlignment:MainAxisAlignment.start,
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.only(left: 10,bottom: 20),
                                          child: Text("Out of Stock",
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontStyle: FontStyle.italic,
                                              color: Color(0xff333333),),),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}
