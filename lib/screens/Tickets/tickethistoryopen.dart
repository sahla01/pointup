import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:pointup/widgets/app_text.dart';

class TicketHistoryOpen extends StatefulWidget {
  const TicketHistoryOpen({Key? key}) : super(key: key);

  @override
  State<TicketHistoryOpen> createState() => _TicketHistoryOpenState();
}

class _TicketHistoryOpenState extends State<TicketHistoryOpen> {
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
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 20,),
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
                    borderRadius:
                    BorderRadius.circular(8), // if you need this
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
                                  AppText(text: "Ticket Number",size: 10,color: const Color(0xffA1A2A8),fw: FontWeight.w600,),
                                  AppText(text: "#23567",size: 12,fw: FontWeight.bold,color: const Color(0xff333333),),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  AppText(text: "Ticket Type",size: 10,color: const Color(0xffA1A2A8),fw: FontWeight.w600,),
                                  AppText(text: "Technical Support",size: 12,fw: FontWeight.bold,color: const Color(0xff333333),),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  AppText(text: "Subject",size: 10,color: const Color(0xffA1A2A8),fw: FontWeight.w600,),
                                  AppText(text: "Points Redeem",size: 12,fw: FontWeight.bold,color: const Color(0xff333333),),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  AppText(text: "Subject",size: 10,color: const Color(0xffA1A2A8),fw: FontWeight.w600,),
                                  AppText(text: "Points Redeem",size: 12,fw: FontWeight.bold,color: const Color(0xff333333),),

                                  const SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 95,right: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppText(text: "Ticket Status",color: const Color(0xff333333),size: 12,fw: FontWeight.bold,),
                                  const SizedBox(
                                    height: 3.0,
                                  ),
                                 AppText(text: "Open",size:12 ,fw: FontWeight.bold,color: const Color(0xff39AE58),),
                                  const SizedBox(
                                    height: 3.0,
                                  ),
                                 Row(
                                   children: [
                                     AppText(text: "13/04/2022,",size: 10,color: const Color(0xffA1A2A8),),
                                     const SizedBox(width: 3,),
                                     AppText(text: "03:46 PM",size: 10,color: const Color(0xffA1A2A8),),

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
                            child: AppText(text: "Message",size: 12,fw: FontWeight.w600,color: const Color(0xff333333),),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 64,
                            width: 307,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(color: const Color(0xffDADADA,),width: 0)
                            ),
                            child: Row(
                              mainAxisAlignment:  MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                AppText(text: "Lorem ipsum dolor sit amet, consectetur lorm ips\n"
                                    "adipiscing elit.Integer blandit donec turpis",
                                  size: 12,
                                  color: const Color(0xffA1A2A8),),
                              ],
                            ),

                          ),
                        ],
                      ),
                      const SizedBox(height: 25,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 64,
                            width: 307,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(color: const Color(0xffDADADA,),width: 0)
                            ),
                            child: Row(
                              mainAxisAlignment:  MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 120,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20,left: 10),
                                        child: AppText(text: "Receipt Attachments",size: 10,fw: FontWeight.w600,color: const Color(0xff333333),),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(right: 20),
                                        child: Text(
                                          'Imange01.jpg',
                                          style: TextStyle(
                                            color: Color(0xff330F6D),
                                            fontSize: 10,
                                            decoration: TextDecoration.underline,
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
                                        padding: const EdgeInsets.only(left: 80),
                                        child: InkWell(
                                          onTap: (){


                                          },
                                          child: Container(
                                            width: 91,
                                            height: 28,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(6),
                                              gradient: const LinearGradient(
                                                  colors: [Color(0xff19184D), Color(0xff530393)]),
                                            ),
                                            child: Center(child: AppText(text: "View Receipt",size: 12,color: Colors.white,)),
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
                      const SizedBox(height: 50,),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));

  }
}
