import 'package:flutter/material.dart';
import 'package:pointup/models/models.dart';
import 'package:pointup/routes/routes_manager.dart';
import 'package:pointup/widgets/app_text.dart';

class ActiveOrders extends StatefulWidget {
  const ActiveOrders({Key? key}) : super(key: key);

  @override
  State<ActiveOrders> createState() => _ActiveOrdersState();
}

class _ActiveOrdersState extends State<ActiveOrders> {
  var dropdownvalue;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 50,top: 10),
                    child: AppText(
                      text: "Actioned Order’s List",
                      size: 12,
                      fw: FontWeight.bold,
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Container(
                      height: 35,
                      width: 140,
                      child: DropdownButtonFormField<String>(
                        icon:   InkWell(
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                                height: 23,
                                width: 50,
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    border: Border.all(width: 0.5,color: const Color(0xff360E70)),
                                    borderRadius:
                                    BorderRadius.circular(4)),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(left: 8),
                                      child: Text('Filter',style: TextStyle(
                                          fontSize: 10,fontWeight: FontWeight.w600,color: Color(0xff360E70)
                                      ),),
                                    ),
                                    SizedBox(width: 3,),
                                    Icon(
                                        Icons.filter_alt_outlined,
                                        size: 10,color:
                                    Color(0xff360E70)
                                    ),
                                  ],
                                )),
                          ),
                        ),
                        value: dropdownvalue,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 0.0, horizontal: 8),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1, color: Color(0xffDADADA)),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: Color(0xffDADADA)),
                              borderRadius: BorderRadius.circular(4)),
                          hintStyle: const TextStyle(height: 1.8,
                              fontSize: 10, color: Color(0xff333333),fontWeight: FontWeight.w600),
                          hintText: 'Confirmed',
                          fillColor: const Color(0xffF4F6FF),
                          filled: true,
                        ),
                        validator: (value) =>
                        value == null
                            ? 'field required'
                            : null,
                        items: ['Confirmed', 'Cancelled']
                            .map<DropdownMenuItem<String>>(
                                (String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value, style: const TextStyle(
                                    fontSize: 10, color: Color(0xff333333),fontWeight: FontWeight.w600),),
                              );
                            }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue;
                          } );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  itemCount: vieworders.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: (){
                        dropdownvalue=='Confirmed'?
                        Navigator.pushNamed(context, Routes.confirmOrders):
                        dropdownvalue=='Cancelled'?Navigator.pushNamed(context,Routes.cancelOrders):
                        Navigator.pushNamed(context, Routes.confirmOrders);
                      },
                      child: Card(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            )),
                        child: Column(
                          children: [
                            ListTile(
                              contentPadding:
                              const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 2),
                              title: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment
                                        .spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Image.asset(
                                        vieworders[index],
                                        fit: BoxFit.cover,
                                        height: 57,
                                        width: 57,
                                      ),
                                      SizedBox(
                                        width: 140,
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment
                                              .start,
                                          children: [
                                            AppText(
                                              text: redeemitem[index],
                                              fw: FontWeight.bold,
                                              size: 12,
                                              color: const Color(
                                                  0xff444444),
                                            ),
                                            const SizedBox(
                                              height: 3,
                                            ),
                                            AppText(
                                              text: redeemname[index],
                                              size: 10,
                                              color: const Color(
                                                  0xff444444),
                                            ),
                                            const SizedBox(
                                              height: 3,
                                            ),
                                            RichText(
                                              overflow: TextOverflow
                                                  .ellipsis,
                                              maxLines: 1,
                                              text: const TextSpan(
                                                  text: 'Qty :',
                                                  style: TextStyle(
                                                      color: Color(
                                                          0xff333333),
                                                      fontSize: 10,
                                                      fontWeight:
                                                      FontWeight
                                                          .w600),
                                                  children: [
                                                    TextSpan(
                                                        text: '01\n',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff333333),
                                                            fontWeight:
                                                            FontWeight
                                                                .w600,
                                                            fontSize:
                                                            10)),
                                                  ]),
                                            ),
                                            const SizedBox(
                                              height: 3,
                                            ),
                                            RichText(
                                              overflow: TextOverflow
                                                  .ellipsis,
                                              maxLines: 1,
                                              text:  TextSpan(
                                                  text: 'Status: ',
                                                  style: const TextStyle(
                                                      color: Color(
                                                          0xff333333),
                                                      fontSize: 10,
                                                      fontWeight:
                                                      FontWeight
                                                          .w600),
                                                  children: [
                                                    dropdownvalue=='Confirmed'?const TextSpan(
                                                        text: 'Order Confirmed\n',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff39AE58),
                                                            fontWeight:
                                                            FontWeight
                                                                .w600,
                                                            fontSize:
                                                            10)):
                                                    dropdownvalue=='Cancelled'? const TextSpan(
                                                            text:'Cancelled by Shop\n',
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xffEF2253),
                                                                fontWeight:
                                                                FontWeight
                                                                    .w600,
                                                                fontSize:
                                                                10)):
                                                    const TextSpan(
                                                            text: 'Order Confirmed\n',
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xff39AE58),
                                                                fontWeight:
                                                                FontWeight
                                                                    .w600,
                                                                fontSize:
                                                                10)),
                                                  ]),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment
                                              .start,
                                          children: [
                                            const SizedBox(
                                              height: 5.0,
                                            ),
                                            Padding(
                                              padding:
                                              const EdgeInsets
                                                  .only(left: 50),
                                              child: AppText(
                                                text: "4560 Pts",
                                                color: const Color(
                                                    0xffF99F1E),
                                                size: 12,
                                                fw: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 3,
                                            ),
                                            AppText(
                                              text:
                                              "Order Ref# 103785647",
                                              color: const Color(
                                                  0xffA1A2A8),
                                              size: 10,
                                            ),
                                            const SizedBox(
                                              height: 3,
                                            ),
                                            RichText(
                                              maxLines: 1,
                                              text: const TextSpan(
                                                  text:
                                                  '  13/04/2022,',
                                                  style: TextStyle(
                                                      color: Color(
                                                          0xffA1A2A8),
                                                      fontSize: 10),
                                                  children: [
                                                    TextSpan(
                                                        text:
                                                        '10:30 AM\n',
                                                        style: TextStyle(
                                                            fontSize:
                                                            10,
                                                            color: Color(
                                                                0xffA1A2A8))),
                                                  ]),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
