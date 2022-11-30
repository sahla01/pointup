import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:lottie/lottie.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:pointup/widgets/app_text.dart';
import 'package:svg_icon/svg_icon.dart';

class PointsCreditPage extends StatefulWidget {
  const PointsCreditPage({Key? key}) : super(key: key);

  @override
  State<PointsCreditPage> createState() => _PointsCreditPageState();
}

class _PointsCreditPageState extends State<PointsCreditPage> with TickerProviderStateMixin {

  final TextEditingController mobileController= TextEditingController();
  final TextEditingController receiptController= TextEditingController();
  final TextEditingController billController= TextEditingController();
  final TextEditingController totalController= TextEditingController();
  final TextEditingController rewardsController= TextEditingController();
  final TextEditingController walletController= TextEditingController();
  final TextEditingController voucherController= TextEditingController();
  late final AnimationController _controller;


  Future<void> startBarcodeScanStream() async {
    FlutterBarcodeScanner.getBarcodeStreamReceiver(
        '#ff6666', 'Cancel', true, ScanMode.BARCODE)!
        .listen((barcode) => print(barcode));
  }
  // Future<void> scanQR() async {
  //   String barcodeScanRes;
  //   try {
  //     barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
  //         '#ff6666', 'Cancel', true, ScanMode.QR);
  //     print(barcodeScanRes);
  //   } on PlatformException {
  //     barcodeScanRes = 'Failed to get platform version.';
  //   }
  //   if (!mounted) return;
  //
  //   setState(() {
  //   });
  // }
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
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
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
              txtalign: TextAlign.center,
              text: "Points Credit",
              color: Colors.white,
              size: 14,
              fw: FontWeight.bold,
            ),
          ),
          gradient: const LinearGradient(
              colors: [Color(0xff19184D), Color(0xff530393)]),
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
                              child: Image.asset('assets/images/barcodee.png',)),
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
                        const SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: AppText(text: "Receipt No ( Optional)",
                                    size: 12,
                                    fw: FontWeight.w600,
                                    txtalign: TextAlign.start,
                                    color: const Color(0xff333333),),
                                )),
                            Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: AppText(text: "Bill Amount",
                                    size: 12,
                                    txtalign: TextAlign.left,
                                    fw: FontWeight.w600,
                                    color: const Color(0xff333333),),
                                )),
                          ],
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: AppText(text: "Total Earnings",
                                    txtalign: TextAlign.left,
                                    size: 12,
                                    fw: FontWeight.w600,
                                    color: const Color(0xff333333),),
                                )),
                            Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: AppText(text: "Rewards Value Rs",
                                    size: 12,
                                    txtalign: TextAlign.left,
                                    fw: FontWeight.w600,
                                    color: const Color(0xff333333),),
                                )),
                          ],
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: AppText(text: "Wallet Rewards",
                                    size: 12,
                                    txtalign: TextAlign.left,
                                    fw: FontWeight.w600,
                                    color: const Color(0xff333333),),
                                )),
                            Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: AppText(
                                    text: "Points Voucher",
                                    txtalign: TextAlign.left,
                                    size: 12,fw: FontWeight.w600,
                                    color: const Color(0xff333333),),
                                )),
                          ],
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
                    const SizedBox(height: 20,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: AppText(text: "Point  Voucher (0) ",color: const Color(0xff333333),size: 12,fw: FontWeight.w600,),
                            ),
                          ],
                        ),

                      ],
                    ),
                    const SizedBox(height: 150,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap: (){
                              Navigator.of(context).pop();

                            },
                            child: Container(
                                height: 52,
                                width: 147,
                                decoration: BoxDecoration(
                                    color: const Color(0xffEF2222),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Center(child: AppText(text: "Cancel", color: Colors.white,size: 12,fw: FontWeight.bold,)))),
                        const SizedBox(width: 15,),
                        InkWell(
                            onTap: () {
                              _showMyDialog();
                            },
                            child: Container(
                                height: 52,
                                width: 147,
                                decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                        colors: [Color(0xff19184D), Color(0xff530393)]),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Center(child: AppText(text: "Credit", color: Colors.white,size: 12,fw: FontWeight.bold,))))
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Future<void> _showMyDialog() async {
    return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
              content: Container(
                width: 230.0,
                height: 220.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          children: [
                            Lottie.asset(
                              'assets/pointsucess.json',
                              width: 60,
                              height: 60,
                              controller: _controller,
                              onLoaded: (composition) {
                                _controller
                                  ..duration = composition.duration
                                  ..forward();
                              },
                            ),
                            AppText(
                              text: 'Points Sucessfully Credited',
                              size: 14,
                              fw: FontWeight.w700,
                              color: const Color(0xff19184D),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AppText(text:'Credited to         : ',
                                  size: 12,
                                  fw: FontWeight.normal,
                                  color: const Color(0xff333333),
                                ),
                                AppText(
                                  text: '     9948789898',
                                  size: 12,
                                  fw: FontWeight.w700,
                                  color: const Color(0xff333333),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: AppText(text:'Points Credited :',
                                    size: 12,
                                    fw: FontWeight.normal,
                                    color: const Color(0xff333333),
                                  ),
                                ),
                                AppText(
                                  text: '     600',
                                  size: 12,
                                  fw: FontWeight.w700,
                                  color: const Color(0xff333333),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: AppText(text:'Points Value Rs :',
                                    size: 12,
                                    fw: FontWeight.normal,
                                    color: const Color(0xff333333),
                                  ),
                                ),
                                AppText(
                                  text: '     300.00',
                                  size: 12,
                                  fw: FontWeight.w700,
                                  color: const Color(0xff333333),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20,),
                            AppText(
                              text: 'Thank you for shpopping! Visit again',
                              size: 8,
                              fw: FontWeight.normal,
                              color: const Color(0xffA1A2A8),
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 10),
                                      child: SvgIcon("assets/icons/print.svg",color: Color(0xffF99F1E),),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(right: 140),
                                  child: AppText(
                                    text: "Print",
                                    size: 14,
                                    txtalign: TextAlign.left,
                                    fw: FontWeight.w700,
                                    color: const Color(0xff19184D),
                                  ),
                                ),
                                Expanded(
                                  child: InkWell(
                                    onTap: (){
                                      Navigator.of(context).pop();
                                    },
                                    child: AppText(
                                      txtalign: TextAlign.end,
                                      text: "OK",
                                      size: 14,
                                      fw: FontWeight.w700,
                                      color: const Color(0xff19184D),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ]),
              ));
        });
  }
}
