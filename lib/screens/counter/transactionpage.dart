import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:pointup/screens/counter/transactiondetailscredit.dart';
import 'package:pointup/widgets/app_text.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  var dropdownvalue;
  TextEditingController searchcontroller = TextEditingController();
  final Shader linearGradient = const LinearGradient(
    colors: <Color>[Color(0xff19184D), Color(0xff530393)],
  ).createShader(
    const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
  );

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
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, top: 10),
                child: DropdownButtonFormField<String>(
                  icon: InkWell(
                    child: Container(
                        height: 23,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: Border.all(
                                width: 0.5, color: Color(0xff360E70)),
                            borderRadius: BorderRadius.circular(4.0)),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 7),
                              child: Text(
                                'filter',
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff360E70)),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(Icons.filter_alt_outlined,
                                size: 10, color: Color(0xff360E70)),
                          ],
                        )),
                  ),
                  value: dropdownvalue,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 15),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 0.5, color: Color(0xffDADADA)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 0.5, color: Color(0xff351070)),
                        borderRadius: BorderRadius.circular(10)),
                    hintStyle: const TextStyle(
                        height: 1.8, fontSize: 12, color: Color(0xff333333)),
                    hintText: 'All Transaction',
                    fillColor: const Color(0xffF4F6FF),
                    filled: true,
                  ),
                  validator: (value) => value == null ? 'field required' : null,
                  items: ['Point Credit', 'Point Redeem']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: const TextStyle(
                            fontSize: 12, color: Color(0xff333333)),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 12,
                  left: 12,
                  right: 10,
                ),
                child: TextFormField(
                  cursorColor: const Color(0xff351070),
                  controller: searchcontroller,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 0.0, horizontal: 15),
                      isDense: true,
                      filled: true,
                      fillColor: const Color(0xffF4F6FF),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 0.5, color: Color(0xffDADADA)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 0.5, color: Color(0xff351070)),
                          borderRadius: BorderRadius.circular(10)),
                      hintStyle: const TextStyle(
                          fontSize: 12, color: Color(0xffA1A2A8)),
                      hintText: 'Enter Mobile OR Member ID',
                      suffixIcon: SizedBox(
                        width: 80,
                        child: IconButton(
                          onPressed: () {},
                          icon: Container(
                              width: 50,
                              height: 23,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(
                                      width: 0.5,
                                      color: const Color(0xff360E70))),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  AppText(
                                    text: "Serch",
                                    size: 8,
                                    color: const Color(0xff360E70),
                                    fw: FontWeight.w600,
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  const Icon(Icons.search_rounded,
                                      size: 10, color: Color(0xff360E70)),
                                ],
                              )),
                        ),
                      )),
                  style: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                      color: Color(0xff333333)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 13, top: 30, bottom: 10),
                    child: AppText(
                      text: "Last 3 Weeks Transactions History ",
                      size: 12,
                      fw: FontWeight.bold,
                      color: const Color(0xff000000),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                child: ListView.builder(
                    // scrollDirection: Axis.vertical,
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    itemCount: 6,
                    itemBuilder: (context, int index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const TransactionCredit()));
                        },
                        child: Card(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          )),
                          child: ListTile(
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                SizedBox(
                                  width: 130,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AppText(
                                        text: "Member ID#",
                                        size: 12,
                                        fw: FontWeight.bold,
                                        color: const Color(0xff333333),
                                      ),
                                      const SizedBox(
                                        height: 8.0,
                                      ),
                                      AppText(
                                        text: "2356787697",
                                        size: 10,
                                        color: const Color(0xffA1A2A8),
                                      ),
                                      const SizedBox(
                                        height: 8.0,
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
                                                      color:
                                                          Color(0xffA1A2A8))),
                                            ]),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 60),
                                        child: RichText(
                                          maxLines: 1,
                                          text: const TextSpan(
                                              text: '250',
                                              style: TextStyle(
                                                  color: Color(0xff125DEF),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                              children: [
                                                TextSpan(
                                                  text: ' Pts\n',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12,
                                                      color: Color(0xff22ECBB)),
                                                )
                                              ]),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8.0,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 30),
                                        child: AppText(
                                            text: "Bill # 1023456",
                                            size: 10,
                                            fw: FontWeight.bold,
                                            color: const Color(0xffA1A2A8)),
                                      ),
                                      const SizedBox(
                                        height: 8.0,
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
                                                      color:
                                                          Color(0xffA1A2A8))),
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
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Load More",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()..shader = linearGradient),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
