import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:pointup/widgets/app_text.dart';
import 'package:svg_icon/svg_icon.dart';

class ViewOrders extends StatefulWidget {
  const ViewOrders({Key? key}) : super(key: key);

  @override
  State<ViewOrders> createState() => _ViewOrdersState();
}

class _ViewOrdersState extends State<ViewOrders> {
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
            child: AppText(
              txtalign: TextAlign.left,
              text: "Order’s",
              color: Colors.white,
              size: 16,
              fw: FontWeight.bold,
            ),
          ),
          actions: <Widget>[
            IconButton(
                onPressed: () {},
                icon: const SvgIcon("assets/icons/notifi.svg"))
          ],
          gradient: const LinearGradient(
              colors: [Color(0xff19184D), Color(0xff530393)]),
        ),
        body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Column(
                  children: [
                    ListTile(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                      title: Column(
                        children: [
                          SizedBox(
                            height: 5.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const Image(
                                height: 80,
                                width: 80,
                                image: AssetImage("assets/images/shoe.png"),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                width: 130,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 5.0,
                                    ),
                                    AppText(
                                      text: "PUCKA",
                                      fw: FontWeight.bold,
                                      size: 12,
                                      color: const Color(0xff19184D),
                                    ),
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    AppText(
                                      text: "Men’s Sports Shoe",
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
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: AppText(
                                        text: "Awaiting Collection",
                                        size: 10,
                                        color: const Color(0xff39AE58),
                                        fw: FontWeight.w600,
                                      ),
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
                      children: [
                        Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 1.5,
                                child: Row(

                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child: Container(
                                          height: 24,
                                          width: 24,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(3),
                                              color: const Color(0xffF99F1E)),
                                          // padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                          child: Center(
                                              child: AppText(
                                                text: "1",
                                                size: 10,
                                                color: const Color(0xffFFFFFF),
                                                fw: FontWeight.w600,
                                              ))),
                                    ),
                                    AppText(
                                      text: "Delete",
                                      size: 10,
                                      fw: FontWeight.w600,
                                      color: const Color(0xff333333),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Padding(
                                        padding: const EdgeInsets.only(right: 30),
                                        child: Container(
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(3),
                                                color: const Color(0xffF99F1E)),
                                            padding:
                                            const EdgeInsets.only(bottom: 10),
                                            child: const Icon(
                                              Icons.minimize,
                                              color: Color(0xffFFFFFF),
                                              size: 14,
                                            )),
                                      ),
                                    ),
                                    AppText(
                                      text: "Add",
                                      size: 10,
                                      fw: FontWeight.w600,
                                      color: const Color(0xff333333),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Padding(
                                        padding: const EdgeInsets.only(right: 30),
                                        child: Container(
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(3),
                                                color: const Color(0xffF99F1E)),
                                            child: const Icon(
                                              Icons.add,
                                              color: Color(0xffFFFFFF),
                                              size: 14,
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    AppText(text: "Shop Trail",size: 10,color: Color(0xff333333),),
                                    SizedBox(width: 30,),
                                    AppText(text: "Shop Trail",size: 10,color: Color(0xff333333),)
                                  ],
                                ),
                              ),
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
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                                onTap: () {},
                                child: Container(
                                    height: 34,
                                    width: 92,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffEF2253),
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Center(
                                        child: AppText(
                                      text: "Cancel Order",
                                      color: Colors.white,
                                      size: 10,
                                      fw: FontWeight.w600,
                                    )))),
                            const SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: InkWell(
                                  onTap: () {},
                                  child: Container(
                                      height: 34,
                                      width: 92,
                                      decoration: BoxDecoration(
                                          gradient: const LinearGradient(
                                              colors: [
                                                Color(0xff19184D),
                                                Color(0xff530393)
                                              ]),
                                          borderRadius:
                                              BorderRadius.circular(3)),
                                      child: Center(
                                          child: AppText(
                                        text: "Redeem Order",
                                        color: Colors.white,
                                        size: 10,
                                        fw: FontWeight.w600,
                                      )))),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    )
                  ],
                ),
              );
            }));
  }
}
