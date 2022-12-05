import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:pointup/screens/counter/pointsredeempage.dart';
import 'package:pointup/widgets/app_text.dart';
import 'package:svg_icon/svg_icon.dart';

class RedeemSecondPage extends StatefulWidget {
  const RedeemSecondPage({Key? key}) : super(key: key);

  @override
  State<RedeemSecondPage> createState() => _RedeemSecondPageState();
}

class _RedeemSecondPageState extends State<RedeemSecondPage>
    with TickerProviderStateMixin {
  final TextEditingController receiptController = TextEditingController();
  final TextEditingController billController = TextEditingController();
  final TextEditingController pointsController = TextEditingController();
  final TextEditingController pointvalueController = TextEditingController();
  final TextEditingController vouchervalueController = TextEditingController();
  final TextEditingController totalvalueController = TextEditingController();
  final TextEditingController balanceController = TextEditingController();
  late final AnimationController _controller;

  final Shader linearGradient = const LinearGradient(
    colors: <Color>[Color(0xff19184D), Color(0xff530393)],
  ).createShader(
    const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
  );

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
            padding: const EdgeInsets.only(left: 70, right: 70),
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.all(10.0),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.07,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: const Color(0xffDADADA))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child:
                                      Image.asset("assets/images/wallet.png"),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text("2550",style: TextStyle(  fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    foreground: Paint()..shader = linearGradient),),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 5,
                                  ),
                                  child:
                                      Image.asset("assets/images/coupon.png"),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                  ),
                                  child:Text("300",style: TextStyle(  fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      foreground: Paint()..shader = linearGradient),),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 5,
                                  ),
                                  child: AppText(
                                    text: "Rs.    ",
                                    size: 12,
                                    fw: FontWeight.bold,
                                    color: const Color(0xff351070),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text("1425.00",style: TextStyle(  fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      foreground: Paint()..shader = linearGradient),),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: AppText(
                              text: "Wallet Points",
                              size: 10,
                              fw: FontWeight.normal,
                              color: const Color(0xff333333),
                            ),
                          ),
                          Expanded(
                            child: AppText(
                              text: "Voucher’s Points",
                              size: 10,
                              fw: FontWeight.normal,
                              color: const Color(0xff333333),
                            ),
                          ),
                          Expanded(
                            child: AppText(
                              text: "Total Points Value",
                              size: 10,
                              fw: FontWeight.normal,
                              color: const Color(0xff333333),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: AppText(
                            text: "Receipt No ( Optional)",
                            size: 12,
                            fw: FontWeight.w600,
                            txtalign: TextAlign.start,
                            color: const Color(0xff333333),
                          ),
                        )),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: AppText(
                            text: "Bill Amount",
                            size: 12,
                            txtalign: TextAlign.left,
                            fw: FontWeight.w600,
                            color: const Color(0xff333333),
                          ),
                        )),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 10.0,
                              left: 20,
                              right: 5,
                            ),
                            child: TextFormField(
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Enter a valid shop id";
                                  }
                                  return null;
                                },
                                cursorColor: const Color(0xff333333),
                                controller: receiptController,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 13, horizontal: 13),
                                  isDense: true,
                                  filled: true,
                                  fillColor: const Color(0xffF4F6FF),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 1, color: Color(0xffDADADA)),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 1, color: Color(0xff330F6C)),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  hintStyle: const TextStyle(
                                      fontSize: 12, color: Color(0xffA1A2A8)),
                                  hintText: '12339',
                                )),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 10.0,
                              left: 5,
                              right: 20,
                            ),
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Enter a valid shop id";
                                }
                                return null;
                              },
                              cursorColor: const Color(0xff333333),
                              controller: billController,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 13, horizontal: 13),
                                isDense: true,
                                filled: true,
                                fillColor: const Color(0xffF4F6FF),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 1, color: Color(0xffDADADA)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 1, color: Color(0xff330F6C)),
                                    borderRadius: BorderRadius.circular(10)),
                                hintStyle: const TextStyle(
                                    fontSize: 12, color: Color(0xffA1A2A8)),
                                hintText: '800.00',
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
                          child: AppText(
                            text: "Enter Points",
                            txtalign: TextAlign.left,
                            size: 12,
                            fw: FontWeight.w600,
                            color: const Color(0xff333333),
                          ),
                        )),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: AppText(
                            text: "Enter Points Value in Rs",
                            size: 12,
                            txtalign: TextAlign.left,
                            fw: FontWeight.w600,
                            color: const Color(0xff333333),
                          ),
                        )),
                      ],
                    ),
                    Row(children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 10.0,
                            left: 20,
                            right: 5,
                          ),
                          child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Enter a valid shop id";
                                }
                                return null;
                              },
                              cursorColor: const Color(0xff333333),
                              controller: pointsController,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 13, horizontal: 13),
                                isDense: true,
                                filled: true,
                                fillColor: const Color(0xffF4F6FF),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 1, color: Color(0xffDADADA)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 1, color: Color(0xff330F6C)),
                                    borderRadius: BorderRadius.circular(10)),
                                hintStyle: const TextStyle(
                                    fontSize: 12, color: Color(0xffA1A2A8)),
                                hintText: '0',
                              )),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 10.0,
                            left: 5,
                            right: 20,
                          ),
                          child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Enter a valid shop id";
                                }
                                return null;
                              },
                              cursorColor: const Color(0xff333333),
                              controller: pointvalueController,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 13, horizontal: 13),
                                isDense: true,
                                filled: true,
                                fillColor: const Color(0xffF4F6FF),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 1, color: Color(0xffDADADA)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 1, color: Color(0xff330F6C)),
                                    borderRadius: BorderRadius.circular(10)),
                                hintStyle: const TextStyle(
                                    fontSize: 12, color: Color(0xffA1A2A8)),
                                hintText: '650',
                              )),
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
                          child: AppText(
                            text: "Voucher Value in Rs",
                            size: 12,
                            txtalign: TextAlign.left,
                            fw: FontWeight.w600,
                            color: const Color(0xff333333),
                          ),
                        )),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: AppText(
                            text: "Total Value in Rs.",
                            txtalign: TextAlign.left,
                            size: 12,
                            fw: FontWeight.w600,
                            color: const Color(0xff333333),
                          ),
                        )),
                      ],
                    ),
                    Row(children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 10.0,
                            left: 20,
                            right: 5,
                          ),
                          child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Enter a valid shop id";
                                }
                                return null;
                              },
                              cursorColor: const Color(0xff333333),
                              controller: vouchervalueController,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 13, horizontal: 13),
                                isDense: true,
                                filled: true,
                                fillColor: const Color(0xffF4F6FF),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 1, color: Color(0xffDADADA)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 1, color: Color(0xff330F6C)),
                                    borderRadius: BorderRadius.circular(10)),
                                hintStyle: const TextStyle(
                                    fontSize: 12, color: Color(0xffA1A2A8)),
                                hintText: '150.00',
                              )),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 10.0,
                            left: 5,
                            right: 20,
                          ),
                          child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Enter a valid shop id";
                                }
                                return null;
                              },
                              cursorColor: const Color(0xff333333),
                              controller: totalvalueController,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 13, horizontal: 13),
                                isDense: true,
                                filled: true,
                                fillColor: const Color(0xffF4F6FF),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 1, color: Color(0xffDADADA)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 1, color: Color(0xff330F6C)),
                                    borderRadius: BorderRadius.circular(10)),
                                hintStyle: const TextStyle(
                                    fontSize: 12, color: Color(0xffA1A2A8)),
                                hintText: '800.00',
                              )),
                        ),
                      )
                    ]),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: AppText(
                              text: "Balance Amount to Pay",
                              size: 12,
                              txtalign: TextAlign.left,
                              fw: FontWeight.w600,
                              color: const Color(0xff333333),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: AppText(
                              text: "Wallet Pts ",
                              size: 12,
                              txtalign: TextAlign.left,
                              fw: FontWeight.w600,
                              color: const Color(0xff333333),
                            ),
                          ),
                        ),
                        Expanded(
                          child: AppText(
                            text: "Voucher Pts",
                            size: 12,
                            txtalign: TextAlign.left,
                            fw: FontWeight.w600,
                            color: const Color(0xff333333),
                          ),
                        ),
                      ],
                    ),
                    Row(children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 10.0,
                            left: 20,
                            right: 5,
                          ),
                          child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Enter a valid shop id";
                                }
                                return null;
                              },
                              cursorColor: const Color(0xff333333),
                              controller: vouchervalueController,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 13, horizontal: 13),
                                isDense: true,
                                filled: true,
                                fillColor: const Color(0xffF4F6FF),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 1, color: Color(0xffDADADA)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 1, color: Color(0xff330F6C)),
                                    borderRadius: BorderRadius.circular(10)),
                                hintStyle: const TextStyle(
                                    fontSize: 12, color: Color(0xffA1A2A8)),
                                hintText: '0.00',
                              )),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 10.0,
                            left: 5,
                            right: 10,
                          ),
                          child:Container(
                            height: 47,
                            width: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(colors: [
                                Color(0xff125DEF),
                                Color(0xff22ECBB)
                              ])
                            ),
                            child: Center(child: AppText(text: "0.00",size: 12,color: const Color(0xffFFFFFF))),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 10.0,
                            right: 20,
                          ),
                          child: Container(
                            height: 47,
                            width: 75,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: const LinearGradient(colors: [
                                  Color(0xff125DEF),
                                  Color(0xff22ECBB)
                                ])
                            ),
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 40,top: 5),
                                  child: Icon(Icons.visibility,size: 14,color: Colors.white,),
                                ),
                                AppText(text: "0.00",size: 12,color: const Color(0xffFFFFFF)),
                              ],
                            ),
                          ),
                        ),
                      )
                    ]),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: AppText(
                            text: "Avialable Voucher’s (03)",
                            color: const Color(0xff333333),
                            size: 12,
                            fw: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 150,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                            height: 52,
                            width: 147,
                            decoration: BoxDecoration(
                                color: const Color(0xffEF2222),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                                child: AppText(
                              text: "Cancel",
                              color: Colors.white,
                              size: 12,
                              fw: FontWeight.bold,
                            )))),
                    const SizedBox(
                      width: 15,
                    ),
                    InkWell(
                        onTap: () {
                          _showMyDialog();
                        },
                        child: Container(
                            height: 52,
                            width: 147,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(colors: [
                                  Color(0xff19184D),
                                  Color(0xff530393)
                                ]),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                                child: AppText(
                              text: "Credit",
                              color: Colors.white,
                              size: 12,
                              fw: FontWeight.bold,
                            ))))
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
            height: 240.0,
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
                        Image.asset(
                          "assets/images/sucessfull.png",
                          width: 52,
                          height: 52,
                        ),
                        // Lottie.asset(
                        //   'assets/pointsucess.json',
                        //   width: 60,
                        //   height: 60,
                        //   controller: _controller,
                        //   onLoaded: (composition) {
                        //     _controller
                        //       ..duration = composition.duration
                        //       ..forward();
                        //   },
                        // ),
                        Text(
                          "Points Sucessfully Redeemed!",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              foreground: Paint()..shader = linearGradient),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: AppText(
                                text: 'Redeemed Amonut Rs. ',
                                size: 12,
                                txtalign: TextAlign.left,
                                fw: FontWeight.normal,
                                color: const Color(0xff333333),
                              ),
                            ),
                            AppText(
                              text: '            350.00',
                              size: 12,
                              fw: FontWeight.w700,
                              color: const Color(0xff333333),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: AppText(
                                text: 'Balance Amonut to Pay Rs.',
                                size: 12,
                                fw: FontWeight.normal,
                                txtalign: TextAlign.left,
                                color: const Color(0xff333333),
                              ),
                            ),
                            AppText(
                              text: '     0.00',
                              size: 12,
                              fw: FontWeight.w700,
                              color: const Color(0xff333333),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: AppText(
                                text: 'Points Credited. ',
                                size: 12,
                                txtalign: TextAlign.left,
                                fw: FontWeight.normal,
                                color: const Color(0xff333333),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 70),
                              child: AppText(
                                text: ' 0.00',
                                size: 12,
                                fw: FontWeight.w700,
                                color: const Color(0xff333333),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: AppText(
                                text: 'Points Value Rs.',
                                size: 12,
                                txtalign: TextAlign.left,
                                fw: FontWeight.normal,
                                color: const Color(0xff333333),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 75),
                              child: AppText(
                                text: '0.00',
                                size: 12,
                                fw: FontWeight.w700,
                                color: const Color(0xff333333),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        AppText(
                          text: 'Thank you for shpopping! Visit again',
                          size: 8,
                          fw: FontWeight.normal,
                          color: const Color(0xffA1A2A8),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Expanded(
                                child: Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: SvgIcon(
                                "assets/icons/print.svg",
                                color: Color(0xffF99F1E),
                              ),
                            )),
                            Padding(
                              padding: const EdgeInsets.only(right: 140),
                              child: AppText(
                                text: "Print",
                                size: 14,
                                txtalign: TextAlign.left,
                                fw: FontWeight.w700,
                                color: const Color(0xffF99F1E),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const PointsRedeemPage()));
                                },
                                child: Text(
                                  "OK",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      foreground: Paint()
                                        ..shader = linearGradient),
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
