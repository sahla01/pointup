import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:pointup/widgets/app_text.dart';

class TransactionCredit extends StatelessWidget {
  const TransactionCredit({Key? key}) : super(key: key);

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
        title: Padding(
          padding: const EdgeInsets.only(left: 70,right: 70),
          child: AppText(
            txtalign: TextAlign.left,
            text: "Transactions",
            color: Colors.white,
            size: 14,
            fw: FontWeight.bold,
          ),
        ),
        gradient: const LinearGradient(
            colors: [Color(0xff19184D), Color(0xff530393)]),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 13,top: 20,bottom: 10),
                  child: AppText(text: "Transaction Details",size: 12,fw: FontWeight.bold,color: const Color(0xff333333),),
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.38,
              child: ListView.builder(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  itemCount: 1,
                  itemBuilder: (context,int index){
                    return Card(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0),)
                      ),
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                        title:  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox(
                              width: 130,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  AppText(text: "Member ID",size: 10,color: const Color(0xffA1A2A8),fw: FontWeight.w600,),
                                  AppText(text: "#2356787697",size: 12,fw: FontWeight.bold,color: const Color(0xff333333),),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  AppText(text: "Bill No",size: 10,color: const Color(0xffA1A2A8),fw: FontWeight.w600,),
                                  AppText(text: "12334556",size: 12,fw: FontWeight.bold,color: const Color(0xff333333),),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  AppText(text: "Bill Amount Rs",size: 10,color: const Color(0xffA1A2A8),fw: FontWeight.w600,),
                                  AppText(text: "3500.00",size: 12,fw: FontWeight.bold,color: const Color(0xff333333),),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  AppText(text: "Wallet Points",size: 10,color: const Color(0xffA1A2A8),fw: FontWeight.w600,),
                                  AppText(text: "50",size: 12,fw: FontWeight.bold,color: const Color(0xff333333),),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  AppText(text: "Voucher Points",size: 10,color: const Color(0xffA1A2A8),fw: FontWeight.w600,),
                                  AppText(text: "200",size: 12,fw: FontWeight.bold,color: const Color(0xff333333),),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  AppText(text: "Total Points Value Rs",size: 10,color: const Color(0xffA1A2A8),fw: FontWeight.w600,),
                                  AppText(text: "125.00",size: 12,fw: FontWeight.bold,color: const Color(0xff333333),),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            ),
                            // SizedBox(
                            //   child: Column(
                            //     crossAxisAlignment: CrossAxisAlignment.start,
                            //     children: [
                            //       Padding(
                            //         padding: const EdgeInsets.only(left: 60,bottom: 50),
                            //         child: AppText(text: "Points Credited",color: Color(0xff333333),size: 12,fw: FontWeight.bold,),
                            //       ),
                            //       const SizedBox(
                            //         height: 3.0,
                            //       ),
                            //       Padding(
                            //         padding: const EdgeInsets.only(left: 60),
                            //         child: RichText(
                            //           maxLines: 1,
                            //           text: const TextSpan(
                            //               text: '250',
                            //               style: TextStyle(
                            //                   color: Color(0xff135EF0),
                            //                   fontSize: 12,fontWeight: FontWeight.bold),
                            //               children: [
                            //                 TextSpan(
                            //                   text: ' Pts\n',
                            //                   style: TextStyle(
                            //                       fontWeight: FontWeight.bold,
                            //                       fontSize: 12,
                            //                       color: Color(0xff135EF0)),
                            //                 )]),
                            //         ),
                            //       ),
                            //       const SizedBox(
                            //         height: 3.0,
                            //       ),
                            //       Padding(
                            //         padding: const EdgeInsets.only(left: 60),
                            //         child: RichText(
                            //           maxLines: 1,
                            //           text: const TextSpan(
                            //               text: '13/04/2022,',
                            //               style: TextStyle(
                            //                   color: Color(0xffA1A2A8),
                            //                   fontSize: 10),
                            //               children: [
                            //                 TextSpan(
                            //                     text: '10:30 AM\n',
                            //                     style: TextStyle(
                            //                         fontSize: 10,
                            //                         color: Color(0xffA1A2A8))),
                            //               ]),
                            //         ),
                            //       ),
                            //     ],
                            //   ),
                            // )
                          ],
                        ),
                        trailing: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 60,top: 5),
                              child: AppText(text: "Points Credited",color: const Color(0xff333333),size: 12,fw: FontWeight.bold,),
                            ),
                            const SizedBox(
                              height: 3.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 60),
                              child: RichText(
                                maxLines: 1,
                                text: const TextSpan(
                                    text: '250',
                                    style: TextStyle(
                                        color: Color(0xff135EF0),
                                        fontSize: 12,fontWeight: FontWeight.bold),
                                    children: [
                                      TextSpan(
                                        text: ' Pts\n',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Color(0xff135EF0)),
                                      )]),
                              ),
                            ),
                            const SizedBox(
                              height: 3.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 60),
                              child: RichText(
                                maxLines: 1,
                                text: const TextSpan(
                                    text: '13/04/2022,',
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
                            ),
                          ],
                        ) ,
                      ),
                    );
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 13,top: 15,bottom: 10),
                  child: AppText(text: "Point  Voucher (01) ",size: 14,fw: FontWeight.bold,color: const Color(0xff333333),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

