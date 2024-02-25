import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:pointup/routes/routes_manager.dart';
import 'package:pointup/widgets/app_text.dart';

class OrderRedeemPage extends StatefulWidget {
  const OrderRedeemPage({Key? key}) : super(key: key);

  @override
  State<OrderRedeemPage> createState() => _OrderRedeemPageState();
}

class _OrderRedeemPageState extends State<OrderRedeemPage> with TickerProviderStateMixin {

  final TextEditingController mobileidController= TextEditingController();
  final TextEditingController cvvController= TextEditingController();


  Future<void> startBarcodeScanStream() async {
    FlutterBarcodeScanner.getBarcodeStreamReceiver(
        '#ff6666', 'Cancel', true, ScanMode.BARCODE)!
        .listen((barcode) => print(barcode));
  }

  Future<void> scanBarcodeNormal() async {
    String barcodeScanRes;
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.BARCODE);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    if (!mounted) return;
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
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
              text: "Order Redeem",
              color: Colors.white,
              size: 14,
              fw: FontWeight.bold,
            ),
          ),
          gradient: const LinearGradient(
              colors: [
                Color(0xff19184D),
                Color(0xff530393)
              ]
          ),
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
                            color:const Color(0xff333333),),
                          const SizedBox(width: 10,),
                          InkWell(
                              onTap: ()=> scanBarcodeNormal(),
                              child: Image.asset('assets/images/Barcod.png',)),
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
                              child: AppText(text: "Member ID OR Order Reference",color: const Color(0xff333333),size: 12,fw: FontWeight.w600,),
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
                                  controller:mobileidController,
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(vertical: 13, horizontal: 13),
                                    isDense: true,
                                    filled: true,
                                    hintStyle: const TextStyle(
                                        fontSize: 12, color: Color(0xffA1A2A8)),
                                    hintText: "Member ID",
                                    fillColor: const Color(0xffF4F6FF),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 0.5,color: Color(0xffDADADA)),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(width: 0.5,color: Color(0xff330F6C)),
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                  )
                              ),
                            ),
                            const SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.only(left: 20,right: 10),
                              child: AppText(text: "CVV",color: const Color(0xff333333),size: 12,fw: FontWeight.w600,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20,),
                              child: TextFormField(
                                  validator: (value) {
                                    if(value == null || value.isEmpty){
                                      return "Enter a valid cvv";
                                    }
                                    return null;
                                  },
                                  cursorColor: const Color(0xff333333),
                                  controller:cvvController,
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(vertical: 13, horizontal: 13),
                                    isDense: true,
                                    filled: true,
                                    hintStyle: const TextStyle(
                                        fontSize: 12, color: Color(0xffA1A2A8)),
                                    hintText: "Enter CVV",
                                    fillColor: const Color(0xffF4F6FF),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 0.5,color: Color(0xffDADADA)),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(width: 0.5,color: Color(0xff330F6C)),
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                  )
                              ),
                            ),
                            const SizedBox(height: 40,),

                            Container(
                              height: 48,
                              margin: const EdgeInsets.all(20),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    colors: [
                                      Color(0xff19184D),
                                      Color(0xff530393)
                                    ]
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, Routes.viewOrder);
                                  },
                                child: Center(
                                    child: AppText(
                                      text: 'Validate',
                                      color: Colors.white,
                                      size: 12,
                                      fw: FontWeight.w700,
                                    )),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ])),
        ),
      ),
    );
  }
}
