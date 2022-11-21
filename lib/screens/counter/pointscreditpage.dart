import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:pointup/screens/counter/barcodescanpage.dart';
import 'package:pointup/widgets/app_text.dart';

class PointsCreditPage extends StatefulWidget {
  const PointsCreditPage({Key? key}) : super(key: key);

  @override
  State<PointsCreditPage> createState() => _PointsCreditPageState();
}

class _PointsCreditPageState extends State<PointsCreditPage> {

  final TextEditingController mobileController= TextEditingController();
  final TextEditingController receiptController= TextEditingController();
  final TextEditingController billController= TextEditingController();
  final TextEditingController totalController= TextEditingController();
  final TextEditingController rewardsController= TextEditingController();
  final TextEditingController walletController= TextEditingController();
  final TextEditingController voucherController= TextEditingController();

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
          padding: const EdgeInsets.only(left: 70),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppText(
                text: "Points Credit",
                color: Colors.white,
                size: 14,
                fw: FontWeight.bold,
              ),
            ],
          ),
        ),
        gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromRGBO(25, 24, 77, 1),
              Color.fromRGBO(25, 24, 100, 1),
              Color.fromRGBO(28, 43, 174, 1)
            ]),
      ),
      body: Form(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 30,top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    AppText(text: "Scan Barcode",
                      size: 14,
                      fw: FontWeight.bold,
                      color:Color(0xff333333),),
                    SizedBox(width: 10,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>BarcodeScanPage()));

                      },
                        child: Image.asset('assets/images/barcodee.png',))
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10,left: 20,right: 10),
                        child: AppText(text: "Mobile OR Member ID",color: const Color(0xff333333),size: 12,fw: FontWeight.w600,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20,),
                        child: TextFormField(
                            validator: (value) {
                              if(value == null || value.isEmpty){
                                return "Enter a valid mobile or member id";
                              }
                              return null;
                            },
                            cursorColor: const Color(0xff333333),
                            controller:mobileController,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(vertical: 13, horizontal: 13),
                              isDense: true,
                              filled: true,
                              fillColor: const Color(0xffF4F6FF),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(width: 0,color: Color(0xff19184D)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(width: 0,color: Color(0xff19184D)),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                            )
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            AppText(text: "Receipt No ( Optional)",size: 12,fw: FontWeight.w600,color: Color(0xff333333),),
                            SizedBox(width: 47,),
                            AppText(text: "Bill Amount",size: 12,fw: FontWeight.w600,color: Color(0xff333333),),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10.0, left: 20, right: 5,),
                              child: TextFormField(
                                  validator: (value) {
                                    if(value == null || value.isEmpty){
                                      return "Enter a valid shop id";
                                    }
                                    return null;
                                  },
                                  cursorColor: const Color(0xff333333),
                                  controller:receiptController,
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(vertical: 13, horizontal: 13),
                                    isDense: true,
                                    filled: true,
                                    fillColor: const Color(0xffF4F6FF),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 1,color: Color(0xffDADADA)),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(width: 1,color: Color(0xffDADADA)),
                                        borderRadius: BorderRadius.circular(10),
                                    ),
                                    hintStyle: const TextStyle(
                                        fontSize: 12, color: Color(0xffA1A2A8)),
                                    hintText: 'Enter Receipt No',
                                  )
                              ),
                            ),
                          ),


                          Expanded(
                            child:  Padding(
                              padding: const EdgeInsets.only(top: 10.0, left: 5, right: 20,),
                              child: TextFormField(
                                  validator: (value) {
                                    if(value == null || value.isEmpty){
                                      return "Enter a valid shop id";
                                    }
                                    return null;
                                  },
                                  cursorColor: const Color(0xff333333),
                                  controller:billController,
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(vertical: 13, horizontal: 13),
                                    isDense: true,
                                    filled: true,
                                    fillColor: const Color(0xffF4F6FF),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 1,color: Color(0xffDADADA)),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(width: 1,color: Color(0xffDADADA)),
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    hintStyle: const TextStyle(
                                        fontSize: 12, color: Color(0xffA1A2A8)),
                                    hintText: '0.00',
                                  ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            AppText(text: "Total Earnings",size: 12,fw: FontWeight.w600,color: Color(0xff333333),),
                            SizedBox(width: 90,),
                            AppText(text: "Rewards Value Rs",size: 12,fw: FontWeight.w600,color: Color(0xff333333),),
                          ],
                        ),
                      ),
                      Row(children: [
                        Expanded(
                          child:  Padding(
                            padding: const EdgeInsets.only(top: 10.0, left: 20, right: 5,),
                            child: TextFormField(
                                validator: (value) {
                                  if(value == null || value.isEmpty){
                                    return "Enter a valid shop id";
                                  }
                                  return null;
                                },
                                cursorColor: const Color(0xff333333),
                                controller:totalController,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(vertical: 13, horizontal: 13),
                                  isDense: true,
                                  filled: true,
                                  fillColor: const Color(0xffF4F6FF),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(width: 1,color: Color(0xffDADADA)),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 1,color: Color(0xffDADADA)),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  hintStyle: const TextStyle(
                                      fontSize: 12, color: Color(0xffA1A2A8)),
                                  hintText: '0',
                                )
                            ),
                          ),
                        ),
                        Expanded(
                          child:  Padding(
                            padding: const EdgeInsets.only(top: 10.0, left: 5, right: 20,),
                            child: TextFormField(
                                validator: (value) {
                                  if(value == null || value.isEmpty){
                                    return "Enter a valid shop id";
                                  }
                                  return null;
                                },
                                cursorColor: const Color(0xff333333),
                                controller:rewardsController,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(vertical: 13, horizontal: 13),
                                  isDense: true,
                                  filled: true,
                                  fillColor: const Color(0xffF4F6FF),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(width: 1,color: Color(0xffDADADA)),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 1,color: Color(0xffDADADA)),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  hintStyle: const TextStyle(
                                      fontSize: 12, color: Color(0xffA1A2A8)),
                                  hintText: '0.00',
                                )
                            ),
                          ),
                        )
                      ]),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            AppText(text: "Wallet Rewards",size: 12,fw: FontWeight.w600,color: Color(0xff333333),),
                            SizedBox(width: 83,),
                            AppText(text: "Points Voucher",size: 12,fw: FontWeight.w600,color: Color(0xff333333),),
                          ],
                        ),
                      ),
                      Row(children: [
                        Expanded(
                          child:  Padding(
                            padding: const EdgeInsets.only(top: 10.0, left: 20, right: 5,),
                            child: TextFormField(
                                validator: (value) {
                                  if(value == null || value.isEmpty){
                                    return "Enter a valid shop id";
                                  }
                                  return null;
                                },
                                cursorColor: const Color(0xff333333),
                                controller:walletController,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(vertical: 13, horizontal: 13),
                                  isDense: true,
                                  filled: true,
                                  fillColor: const Color(0xffF4F6FF),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(width: 1,color: Color(0xffDADADA)),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 1,color: Color(0xffDADADA)),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  hintStyle: const TextStyle(
                                      fontSize: 12, color: Color(0xffA1A2A8)),
                                  hintText: '0',
                                )
                            ),
                          ),
                        ),
                        Expanded(
                          child:  Padding(
                            padding: const EdgeInsets.only(top: 10.0, left: 5, right: 20,),
                            child: TextFormField(
                                validator: (value) {
                                  if(value == null || value.isEmpty){
                                    return "Enter a valid shop id";
                                  }
                                  return null;
                                },
                                cursorColor: const Color(0xff333333),
                                controller:voucherController,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(vertical: 13, horizontal: 13),
                                  isDense: true,
                                  filled: true,
                                  fillColor: const Color(0xffF4F6FF),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(width: 1,color: Color(0xffDADADA)),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 1,color: Color(0xffDADADA)),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  hintStyle: const TextStyle(
                                      fontSize: 12, color: Color(0xffA1A2A8)),
                                  hintText: '0',
                                )
                            ),
                          ),
                        )
                      ]),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 220,),
                        child: AppText(text: "Point  Voucher (0) ",color: const Color(0xff333333),size: 12,fw: FontWeight.w600,),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25,top: 150),
                    child: Row(
                      children: [
                        InkWell(
                            onTap: (){

                            },
                            child: Container(
                                height: 52,
                                width: 147,
                                decoration: BoxDecoration(
                                    color: Color(0xffEF2222),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Center(child: AppText(text: "Cancel", color: Colors.white,size: 12,fw: FontWeight.bold,)))),
                        SizedBox(width: 15,),
                        InkWell(
                            onTap: () {

                            },
                            child: Container(
                                height: 52,
                                width: 147,
                                decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        colors: [
                                          Color.fromRGBO(25, 24, 77, 1),
                                          Color.fromRGBO(25, 24, 77, 1),
                                          Color.fromRGBO(28, 43, 174, 1)
                                        ]),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Center(child: AppText(text: "Credit", color: Colors.white,size: 12,fw: FontWeight.bold,))))
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
