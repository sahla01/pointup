import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:pointup/widgets/app_text.dart';

class TicketHistoryClosed extends StatefulWidget {
  const TicketHistoryClosed({Key? key}) : super(key: key);

  @override
  State<TicketHistoryClosed> createState() => _TicketHistoryClosedState();
}

class _TicketHistoryClosedState extends State<TicketHistoryClosed> {
  TextEditingController reasoncontroler = TextEditingController();

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
              padding: const EdgeInsets.only(right: 40),
              child: AppText(
                txtalign: TextAlign.left,
                text: "Receipt Details",
                color: Colors.white,
                size: 16,
                fw: FontWeight.bold,
              ),
            ),
          ),
          gradient: const LinearGradient(
              colors: [Color(0xff19184D), Color(0xff530393)]),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      top: 20,
                    ),
                    child: AppText(
                      text: "Ticket Details",
                      size: 12,
                      fw: FontWeight.bold,
                      color: const Color(0xff333333),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // if you need this
                    side: const BorderSide(
                      color: Color(0xffDADADA),
                      width: 1,
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SizedBox(
                            width: 130,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  AppText(
                                    text: "Ticket Number",
                                    size: 10,
                                    color: const Color(0xffA1A2A8),
                                    fw: FontWeight.w600,
                                  ),
                                  AppText(
                                    text: "#23567",
                                    size: 12,
                                    fw: FontWeight.bold,
                                    color: const Color(0xff333333),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  AppText(
                                    text: "Ticket Type",
                                    size: 10,
                                    color: const Color(0xffA1A2A8),
                                    fw: FontWeight.w600,
                                  ),
                                  AppText(
                                    text: "Technical Support",
                                    size: 12,
                                    fw: FontWeight.bold,
                                    color: const Color(0xff333333),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  AppText(
                                    text: "Subject",
                                    size: 10,
                                    color: const Color(0xffA1A2A8),
                                    fw: FontWeight.w600,
                                  ),
                                  AppText(
                                    text: "Points Redeem",
                                    size: 12,
                                    fw: FontWeight.bold,
                                    color: const Color(0xff333333),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  AppText(
                                    text: "Subject",
                                    size: 10,
                                    color: const Color(0xffA1A2A8),
                                    fw: FontWeight.w600,
                                  ),
                                  AppText(
                                    text: "Points Redeem",
                                    size: 12,
                                    fw: FontWeight.bold,
                                    color: const Color(0xff333333),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 95, right: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppText(
                                    text: "Ticket Status",
                                    color: const Color(0xff333333),
                                    size: 12,
                                    fw: FontWeight.bold,
                                  ),
                                  const SizedBox(
                                    height: 3.0,
                                  ),
                                  AppText(
                                    text: "Closed",
                                    size: 12,
                                    fw: FontWeight.bold,
                                    color: const Color(0xffEF2253),
                                  ),
                                  const SizedBox(
                                    height: 3.0,
                                  ),
                                  Row(
                                    children: [
                                      AppText(
                                        text: "13/04/2022,",
                                        size: 10,
                                        color: const Color(0xffA1A2A8),
                                      ),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      AppText(
                                        text: "03:46 PM",
                                        size: 10,
                                        color: const Color(0xffA1A2A8),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: AppText(
                              text: "Message",
                              size: 12,
                              fw: FontWeight.w600,
                              color: const Color(0xff333333),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 64,
                            width: 307,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(
                                    color: const Color(
                                      0xffDADADA,
                                    ),
                                    width: 0)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "Lorem ipsum dolor sit amet, consectetur lorm ips\n"
                                    "adipiscing elit.Integer blandit donec turpis",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xffA1A2A8),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 64,
                            width: 307,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(
                                    color: const Color(
                                      0xffDADADA,
                                    ),
                                    width: 0)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 120,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Padding(
                                        padding:
                                            EdgeInsets.only(top: 25, left: 15),
                                        child: Text(
                                          'Imange01.jpg',
                                          style: TextStyle(
                                            color: Color(0xff330F6D),
                                            fontSize: 10,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 100),
                                        child: InkWell(
                                          onTap: () {
                                            _showMyDialog();
                                          },
                                          child: Container(
                                            width: 69,
                                            height: 28,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              gradient: const LinearGradient(
                                                  colors: [
                                                    Color(0xff19184D),
                                                    Color(0xff530393)
                                                  ]),
                                            ),
                                            child: Center(
                                                child: AppText(
                                              text: "View File",
                                              size: 12,
                                              color: Colors.white,
                                            )),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: AppText(
                              text: "Pointupp Comment’s",
                              size: 12,
                              fw: FontWeight.w600,
                              color: const Color(0xff333333),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 64,
                            width: 307,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(
                                    color: const Color(
                                      0xffDADADA,
                                    ),
                                    width: 0)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "Lorem ipsum dolor sit amet, consectetur lorm ips\n"
                                    "adipiscing elit.Integer blandit donec turpis",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xffA1A2A8),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
              title: AppBar(
                  automaticallyImplyLeading: false,
                  actions: [
                    InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 110),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.highlight_remove_rounded,
                              ),
                            ],
                          ),
                        )),
                  ],
                  backgroundColor: const Color(0xff340E6D)),
              backgroundColor: Colors.black,
              content: Container(
                  width: 350.0,
                  height: 460,
                  decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.black,
                    // color: Color(0xffFFFFFF),
                    // borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: ListView(
                    children: [
                      Card(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        )),
                        child: ListTile(
                          title: Column(
                            children: [
                              Image.asset(
                                "assets/images/receipt.png",
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        )),
                        child: ListTile(
                          title: Column(
                            children: [
                              Image.asset(
                                "assets/images/receipt.png",
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        )),
                        child: ListTile(
                          title: Column(
                            children: [
                              Image.asset(
                                "assets/images/receipt.png",
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )));
        });
  }
}
