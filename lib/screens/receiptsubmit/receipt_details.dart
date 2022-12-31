import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:pointup/routes/routes_manager.dart';
import 'package:pointup/widgets/app_text.dart';

class ReceiptDetailsPage extends StatefulWidget {
  const ReceiptDetailsPage({Key? key}) : super(key: key);

  @override
  State<ReceiptDetailsPage> createState() => _ReceiptDetailsPageState();
}

class _ReceiptDetailsPageState extends State<ReceiptDetailsPage> {
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
                      text: "View Submission",
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
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  AppText(
                                    text: "Member ID",
                                    size: 10,
                                    color: const Color(0xffA1A2A8),
                                    fw: FontWeight.w600,
                                  ),
                                  AppText(
                                    text: "#2356787697",
                                    size: 12,
                                    fw: FontWeight.bold,
                                    color: const Color(0xff333333),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  AppText(
                                    text: "Date of Submission",
                                    size: 10,
                                    color: const Color(0xffA1A2A8),
                                    fw: FontWeight.w600,
                                  ),
                                  AppText(
                                    text: "13/04/2022,03:46 PM",
                                    size: 12,
                                    fw: FontWeight.bold,
                                    color: const Color(0xff333333),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  AppText(
                                    text: "Receipt No",
                                    size: 10,
                                    color: const Color(0xffA1A2A8),
                                    fw: FontWeight.w600,
                                  ),
                                  AppText(
                                    text: "1023456",
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
                                  const EdgeInsets.only(bottom: 50, right: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 60,
                                    ),
                                    child: AppText(
                                      text: "Bill Amount",
                                      color: const Color(0xff333333),
                                      size: 12,
                                      fw: FontWeight.bold,
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
                                          text: 'Rs.',
                                          style: TextStyle(
                                              color: Color(0xffF99F1E),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                          children: [
                                            TextSpan(
                                              text: '3500.00',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12,
                                                  color: Color(0xffF99F1E)),
                                            )
                                          ]),
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
                                          text: '14/04/2022,',
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
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
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
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 20,left: 10),
                                          child: AppText(
                                            text: "Receipt Attachments",
                                            size: 10,
                                            fw: FontWeight.w600,
                                            color: const Color(0xff333333),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(right: 20),
                                          child: Text(
                                            'Imange01.jpg',
                                            style: TextStyle(
                                              color: Color(0xff333333),
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
                                              const EdgeInsets.only(left: 80),
                                          child: InkWell(
                                            onTap: () {
                                              _showMyDialog();
                                            },
                                            child: Container(
                                              width: 91,
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
                                                text: "View Receipt",
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
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 250,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                      onTap: () {
                        _cancelMyDialog();
                      },
                      child: Container(
                          height: 52,
                          width: 147,
                          decoration: BoxDecoration(
                              color: const Color(0xffEF2253),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                              child: AppText(
                            text: "Reject",
                            color: Colors.white,
                            size: 12,
                            fw: FontWeight.bold,
                          )))),
                  const SizedBox(
                    width: 15,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(context,Routes.receiptApprovel);
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
                            text: "Verified",
                            color: Colors.white,
                            size: 12,
                            fw: FontWeight.bold,
                          ))))
                ],
              ),
            ],
          ),
        ));
  }

  Future<void> _cancelMyDialog() async {
    return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          var cancel;
          return AlertDialog(
              content: Container(
            width: 250.0,
            height: 350.0,
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/delete.png",
                        width: 83,
                        height: 83,
                      ),
                      Text(
                        "Do you want to reject this Submission?",
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
                          AppText(
                            text: 'Select Reason',
                            size: 12,
                            fw: FontWeight.bold,
                            color: const Color(0xff333333),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: DropdownButtonFormField<String>(
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Color(0xff333333),
                          ),
                          value: cancel,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: Color(0xffDADADA)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 1, color: Color(0xffDADADA)),
                                borderRadius: BorderRadius.circular(10)),
                            hintStyle: const TextStyle(
                              fontSize: 12,
                              color: Color(0xff333333),
                            ),
                            hintText: 'Other',
                          ),
                          onChanged: (cancl) => setState(() => cancel = cancl),
                          validator: (value) =>
                              value == null ? 'field required' : null,
                          items: [
                            'All Transaction',
                            'Point Credit',
                            'Point Redeem'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: const TextStyle(
                                    fontSize: 12, color: Color(0xff333333)),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: TextFormField(
                            maxLines: 2,
                            // validator: (value) {
                            //   if (value == null || value.isEmpty) {
                            //     return "Enter a Valid  reason";
                            //   }
                            // },
                            controller: reasoncontroler,
                            decoration: InputDecoration(
                              hintText:
                                  'Write here the reason if you are selected Other',
                              hintStyle: const TextStyle(
                                  color: Color(0xffA1A2A8), fontSize: 12),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 12),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 1, color: Color(0xffDADADA)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 1, color: Color(0xffEF2253)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              "No",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                foreground: Paint()..shader = linearGradient,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, Routes.receiptSubmit);
                            },
                            child: const Text(
                              "Reject",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  color: Color(0xffEF2253)),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ]),
          ));
        });
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
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                    child:  Padding(
                      padding: const EdgeInsets.only(right: 110),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.highlight_remove_rounded,),
                        ],
                      ),
                    )),

              ],
                backgroundColor: const Color(0xff340E6D)
            ) ,
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
