import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:lottie/lottie.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:pointup/screens/counter/redeemsecondpage.dart';
import 'package:pointup/widgets/app_text.dart';
import 'package:svg_icon/svg_icon.dart';

class PointsRedeemPage extends StatefulWidget {
  const PointsRedeemPage({Key? key}) : super(key: key);

  @override
  State<PointsRedeemPage> createState() => _PointsRedeemPageState();
}

class _PointsRedeemPageState extends State<PointsRedeemPage> with TickerProviderStateMixin {

  final TextEditingController mobileidController= TextEditingController();
  final TextEditingController cvvController= TextEditingController();
  late final AnimationController _controller;


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
              txtalign: TextAlign.left,
              text: "Points Redeem",
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
                          child: AppText(text: "Member ID",color: const Color(0xff333333),size: 12,fw: FontWeight.w600,),
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
                                  borderSide: const BorderSide(width: 0,color: Color(0xffDADADA)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(width: 0,color: Color(0xffDADADA)),
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
                                  borderSide: const BorderSide(width: 0,color: Color(0xffDADADA)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(width: 0,color: Color(0xffDADADA)),
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
                                colors: [Color(0xff19184D), Color(0xff530393)]),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>RedeemSecondPage()));
                              // Navigator.push(context,
                              //     MaterialPageRoute(
                              //         builder: (context) => const RedeemSecondPage()));
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
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: AppText(
                                text: 'Points Sucessfully Credited',
                                size: 14,
                                fw: FontWeight.w700,
                                color: const Color(0xff19184D),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AppText(text:'Credited to        : ',
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
                                  padding: const EdgeInsets.only(left: 32),
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
                                  padding: const EdgeInsets.only(left: 32),
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
