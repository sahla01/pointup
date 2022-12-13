import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:pointup/screens/customdrwer.dart';
import 'package:pointup/screens/receiptsubmit/receiptdetails.dart';
import 'package:pointup/widgets/app_text.dart';
import 'package:svg_icon/svg_icon.dart';

class ReceiptSubmitPage extends StatefulWidget {
  const ReceiptSubmitPage({Key? key}) : super(key: key);

  @override
  State<ReceiptSubmitPage> createState() => _ReceiptSubmitPageState();
}

class _ReceiptSubmitPageState extends State<ReceiptSubmitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewGradientAppBar(
        title: Center(
          child: AppText(
            text: "Receipt Submit",
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
                    text: "List Of Submission (6)",
                    size: 12,
                    fw: FontWeight.bold,
                    color: const Color(0xff333333),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.9,
                  child: ListView.builder(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      itemCount: 6,
                      itemBuilder: (context,int index){
                        return InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const ReceiptDetailsPage()));
                          },
                          child: Card(
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
                                        AppText(text: "Member ID#",size: 12,fw: FontWeight.bold,color: const Color(0xff333333),),
                                        const SizedBox(
                                          height: 5.0,
                                        ),
                                        AppText(text: "9846787697",size: 10,color: const Color(0xffA1A2A8),),
                                        const SizedBox(
                                          height: 5.0,
                                        ),
                                        RichText(
                                          maxLines: 1,
                                          text: const TextSpan(
                                              text: '13/04/2022,',
                                              style: TextStyle(
                                                  color: Color(0xffA1A2A8),
                                                  fontSize: 10),
                                              children: [
                                                TextSpan(
                                                    text: '03:46 PM\n',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        color: Color(0xffA1A2A8))),
                                              ]),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 30),
                                          child: AppText(
                                              text: "3500.00",
                                              size: 12,
                                              fw: FontWeight.bold,
                                              color: const Color(0xffF99F1E)
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5.0,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 30),
                                          child: AppText(
                                              text: "Bill # 1023456",
                                              size: 10,
                                              fw: FontWeight.bold,
                                              color: const Color(0xffA1A2A8)
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5.0,
                                        ),

                                        RichText(
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
                                      ],
                                    ),
                                  )
                                ],
                              ),


                            ),
                          ),
                        );
                      }),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
