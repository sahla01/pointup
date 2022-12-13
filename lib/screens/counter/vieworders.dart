import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:pointup/models/models.dart';
import 'package:pointup/widgets/app_text.dart';
import 'package:svg_icon/svg_icon.dart';

class ViewOrders extends StatefulWidget {
  const ViewOrders({Key? key}) : super(key: key);

  @override
  State<ViewOrders> createState() => _ViewOrdersState();
}

class _ViewOrdersState extends State<ViewOrders> {
  TextEditingController reasoncontroler= TextEditingController();

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
            child: AppText(
              txtalign: TextAlign.left,
              text: "Order’s",
              color: Colors.white,
              size: 16,
              fw: FontWeight.bold,
            ),
          ),
          actions: <Widget>[
            Image.asset("assets/images/noti.png"),
            // IconButton(
            //     onPressed: () {},
            //     icon: const SvgIcon("assets/icons/notifi.svg"))
          ],
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
                    padding: const EdgeInsets.only(left: 10,top: 30,bottom: 10),
                    child: AppText(text: "View Order’s (2)",size: 12,fw: FontWeight.bold,color: const Color(0xff333333),),
                  ),
                ],
              ),

              Container(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: vieworders.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0),)
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              contentPadding:
                              const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                              title: Column(
                                children: [
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Image.asset(vieworders[index],fit:BoxFit.cover,height: 89,width: 89,),
                                      SizedBox(
                                        width: 120,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(
                                              height: 5.0,
                                            ),
                                            AppText(
                                              text: orderbrands[index],
                                              fw: FontWeight.bold,
                                              size: 12,
                                              color: const Color(0xff19184D),
                                            ),
                                            const SizedBox(
                                              height: 3,
                                            ),
                                            AppText(
                                              text: orderproducts[index],
                                              size: 10,
                                              color: const Color(0xff19184D),
                                            ),
                                            RichText(
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              text: const TextSpan(
                                                  text: 'Pts  ',
                                                  style: TextStyle(
                                                      color: Color(0xffF99F1E),
                                                      fontSize: 10),
                                                  children: [
                                                    TextSpan(
                                                        text: '4560 \n',
                                                        style: TextStyle(
                                                            color: Color(0xffF99F1E),
                                                            fontWeight: FontWeight.bold,
                                                            fontSize: 12)),
                                                  ]),
                                            ),
                                            const SizedBox(
                                              height: 3,
                                            ),
                                            RichText(
                                              maxLines: 1,
                                              text: const TextSpan(
                                                  text: '₹    ',
                                                  style: TextStyle(
                                                      color: Color(0xff333333),
                                                      fontSize: 13.0),
                                                  children: [
                                                    TextSpan(
                                                        text: '2280.00\n',
                                                        style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            fontSize: 12,
                                                            color: Color(0xff19184D))),
                                                  ]),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(
                                              height: 5.0,
                                            ),
                                            AppText(
                                              text: "Order Ref# 103785647",
                                              color: const Color(0xff333333),
                                              size: 10,
                                              fw: FontWeight.bold,
                                            ),
                                            const SizedBox(
                                              height: 3,
                                            ),
                                            RichText(
                                              maxLines: 1,
                                              text: const TextSpan(
                                                  text: '  13/04/2022,',
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
                                            const SizedBox(
                                              height: 3,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 73),
                                              child: AppText(
                                                text: "Status",
                                                size: 10,
                                                fw: FontWeight.bold,
                                                color: const Color(0xff333333),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 3,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 15),
                                              child: AppText(
                                                text: "Awaiting Collection",
                                                size: 10,
                                                color: const Color(0xff39AE58),
                                                fw: FontWeight.w600,
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: AppText(
                                        text: "Qty",
                                        size: 10,
                                        fw: FontWeight.bold,
                                        color: const Color(0xff333333),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Container(
                                              height: 24,
                                              width: 24,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(3),
                                                  color: const Color(0xffF99F1E)),
                                              // padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                              child: Center(
                                                  child: AppText(
                                                    text: "1",
                                                    size: 10,
                                                    color: const Color(0xffFFFFFF),
                                                    fw: FontWeight.w600,
                                                  ))),
                                        ),
                                        const SizedBox(width: 10,),
                                        AppText(
                                          text: "Delete",
                                          size: 10,
                                          fw: FontWeight.w600,
                                          color: const Color(0xff333333),
                                        ),
                                        const SizedBox(width: 5,),
                                        Container(
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(3),
                                                color: const Color(0xffF99F1E)),
                                            padding:
                                            const EdgeInsets.only(bottom: 10),
                                            child: const Icon(
                                              Icons.minimize,
                                              color: Color(0xffFFFFFF),
                                              size: 14,
                                            )),
                                        const SizedBox(width: 10,),
                                        AppText(
                                          text: "Add",
                                          size: 10,
                                          fw: FontWeight.w600,
                                          color: const Color(0xff333333),
                                        ),
                                        const SizedBox(width: 5,),
                                        Container(
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(3),
                                                color: const Color(0xffF99F1E)),
                                            child: const Icon(
                                              Icons.add,
                                              color: Color(0xffFFFFFF),
                                              size: 14,
                                            )),
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(width: 10,),
                                Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AppText(
                                      text: "Size",
                                      size: 10,
                                      fw: FontWeight.bold,
                                      color: const Color(0xff333333),
                                    ),
                                    const SizedBox(height: 15.0,),
                                    AppText(text: "Shop Trail",size: 10,color: const Color(0xff333333),),
                                  ],
                                ),
                                const SizedBox(width: 10,),
                                Padding(
                                  padding: const EdgeInsets.only(right: 40),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      AppText(
                                        text: "Color",
                                        size: 10,
                                        fw: FontWeight.bold,
                                        color: const Color(0xff333333),
                                      ),
                                      const SizedBox(height: 15.0,),
                                      AppText(text: "Shop Trail",size: 10,color: const Color(0xff333333),),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            // Row(
                            //   children: [
                            //     Expanded(
                            //         child: Padding(
                            //           padding: const EdgeInsets.only(right: 99),
                            //           child: AppText(
                            //             text: "Qty",
                            //             size: 10,
                            //             fw: FontWeight.bold,
                            //             color: Color(0xff333333),
                            //           ),
                            //         )),
                            //     Expanded(
                            //         child: Padding(
                            //           padding: const EdgeInsets.only(right: 50),
                            //           child: AppText(
                            //             text: "Size",
                            //             size: 10,
                            //             fw: FontWeight.bold,
                            //             color: Color(0xff333333),
                            //           ),
                            //         )),
                            //     Padding(
                            //       padding: const EdgeInsets.only(right: 40),
                            //       child: AppText(
                            //         text: "Color",
                            //         size: 10,
                            //         fw: FontWeight.bold,
                            //         color: Color(0xff333333),
                            //       ),
                            //     ),
                            //   ],
                            // ),
                            // SizedBox(height: 5,),
                            // Row(
                            //   children: [
                            //     Expanded(
                            //       child: Container(
                            //         height: 20,
                            //         width: 40,
                            //         child: Row(
                            //           mainAxisAlignment: MainAxisAlignment.start,
                            //           children: [
                            //             Padding(
                            //               padding: const EdgeInsets.only(left: 10),
                            //               child: Container(
                            //                   height: 24,
                            //                   width: 24,
                            //                   decoration: BoxDecoration(
                            //                       borderRadius: BorderRadius.circular(3),
                            //                       color: const Color(0xffF99F1E)),
                            //                   // padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                            //                   child: Center(
                            //                       child: AppText(
                            //                         text: "1",
                            //                         size: 10,
                            //                         color: const Color(0xffFFFFFF),
                            //                         fw: FontWeight.w600,
                            //                       ))),
                            //             ),
                            //             SizedBox(width: 10,),
                            //             AppText(
                            //               text: "Delete",
                            //               size: 10,
                            //               fw: FontWeight.w600,
                            //               color: const Color(0xff333333),
                            //             ),
                            //             SizedBox(width: 5,),
                            //             Container(
                            //                 height: 24,
                            //                 width: 24,
                            //                 decoration: BoxDecoration(
                            //                     borderRadius:
                            //                     BorderRadius.circular(3),
                            //                     color: const Color(0xffF99F1E)),
                            //                 padding:
                            //                 const EdgeInsets.only(bottom: 10),
                            //                 child: const Icon(
                            //                   Icons.minimize,
                            //                   color: Color(0xffFFFFFF),
                            //                   size: 14,
                            //                 )),
                            //             SizedBox(width: 10,),
                            //             AppText(
                            //               text: "Add",
                            //               size: 10,
                            //               fw: FontWeight.w600,
                            //               color: const Color(0xff333333),
                            //             ),
                            //             SizedBox(width: 5,),
                            //             Container(
                            //                 height: 24,
                            //                 width: 24,
                            //                 decoration: BoxDecoration(
                            //                     borderRadius:
                            //                     BorderRadius.circular(3),
                            //                     color: const Color(0xffF99F1E)),
                            //                 child: const Icon(
                            //                   Icons.add,
                            //                   color: Color(0xffFFFFFF),
                            //                   size: 14,
                            //                 )),
                            //           ],
                            //         ),
                            //       ),
                            //     ),
                            //     Expanded(
                            //       child: Container(
                            //         width: 40,
                            //         height: 20,
                            //         child: Row(
                            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //           children: [
                            //             AppText(text: "Shop Trail",size: 10,color: Color(0xff333333),),
                            //             Padding(
                            //               padding: const EdgeInsets.only(right: 20),
                            //               child: AppText(text: "Shop Trail",size: 10,color: Color(0xff333333),),
                            //             )
                            //           ],
                            //         ),
                            //       ),
                            //     )
                            //   ],
                            // ),
                            const Divider(
                              color: Color(0xffDADADA),
                              thickness: 0.5,
                              indent: 10,
                              endIndent: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    AppText(
                                      text: "Total",
                                      size: 14,
                                      fw: FontWeight.bold,
                                      color: const Color(0xff19184D),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    AppText(
                                        text: "Pts",
                                        size: 10,
                                        fw: FontWeight.w600,
                                        color: const Color(0xff19184D)),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 15),
                                      child: AppText(
                                        text: "4560",
                                        size: 12,
                                        fw: FontWeight.bold,
                                        color: const Color(0xff19184D),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    AppText(
                                      text: "₹",
                                      color: const Color(0xff333333),
                                      size: 14,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 15),
                                      child: AppText(
                                        text: "2280.00",
                                        size: 12,
                                        fw: FontWeight.bold,
                                        color: const Color(0xff19184D),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    InkWell(
                                        onTap: () {
                                          _cancelMyDialog();
                                        },
                                        child: Container(
                                            height: 34,
                                            width: 92,
                                            decoration: BoxDecoration(
                                                color: const Color(0xffEF2253),
                                                borderRadius: BorderRadius.circular(3)),
                                            child: Center(
                                                child: AppText(
                                                  text: "Cancel Order",
                                                  color: Colors.white,
                                                  size: 10,
                                                  fw: FontWeight.w600,
                                                )))),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 12),
                                      child: InkWell(
                                          onTap: () {
                                            _showMyDialog();
                                          },
                                          child: Container(
                                              height: 34,
                                              width: 92,
                                              decoration: BoxDecoration(
                                                  gradient: const LinearGradient(
                                                      colors: [
                                                        Color(0xff19184D),
                                                        Color(0xff530393)
                                                      ]),
                                                  borderRadius:
                                                  BorderRadius.circular(3)),
                                              child: Center(
                                                  child: AppText(
                                                    text: "Redeem Order",
                                                    color: Colors.white,
                                                    size: 10,
                                                    fw: FontWeight.w600,
                                                  )))),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    })
              ),
            ],
          ),
        ));
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
                            Image.asset("assets/images/sucessfull.png",width: 52,height: 52,
                            ),
                            Text("Order Sucessfully Redeemed!",style: TextStyle(fontWeight: FontWeight.w700,
                                fontSize: 14,foreground: Paint()..shader = linearGradient),),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: AppText(text:'Redeemed Ponits. ',
                                    size: 12,
                                    fw: FontWeight.normal,
                                    color: const Color(0xff333333),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 40),
                                  child: AppText(
                                    text: '4560.00',
                                    size: 12,
                                    fw: FontWeight.w700,
                                    color: const Color(0xff333333),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 23),
                                  child: AppText(text:'Points Value  Rs.',
                                    size: 12,
                                    fw: FontWeight.normal,
                                    color: const Color(0xff333333),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 48),
                                  child: AppText(
                                    text: '2280.00',
                                    size: 12,
                                    fw: FontWeight.w700,
                                    color: const Color(0xff333333),
                                  ),
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
                                    color: const Color(0xffF99F1E),
                                  ),
                                ),
                                Expanded(
                                  child: InkWell(
                                    onTap: (){
                                      Navigator.of(context).pop();
                                    },
                                    child:Text("OK",style: TextStyle(  fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        foreground: Paint()..shader = linearGradient),
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
  Future<void> _cancelMyDialog() async {
    return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          var cancel;
          return AlertDialog(
              content: Container(
                width: 250.0,
                height: 300.0,
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
                          Image.asset("assets/images/delete.png",width: 83,height: 83,
                          ),
                          Text("Do you want to cancel this order?",style: TextStyle(fontWeight: FontWeight.w700,
                              fontSize: 14,foreground: Paint()..shader = linearGradient),),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              AppText(text:'Select Reason',
                                size: 12,
                                fw: FontWeight.bold,
                                color: const Color(0xff333333),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: DropdownButtonFormField<String>(
                              icon: const Icon(Icons.keyboard_arrow_down,color: Color(0xff333333),),
                              value:cancel,
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
                                      fontSize: 12, color: Color(0xff333333),),
                                  hintText: 'Other',
                              ),
                              onChanged: (cancl) =>
                                  setState(() => cancel = cancl),
                              validator: (value) =>
                              value == null
                                  ? 'field required'
                                  : null,
                              items: ['All Transaction', 'Point Credit','Point Redeem']
                                  .map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value,style: const TextStyle(fontSize: 12,color: Color(0xff333333)),),
                                    );
                                  }).toList(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child:  TextFormField(
                              maxLines: 2,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Enter a Valid  reason";
                                  }
                                },
                                controller: reasoncontroler,
                                decoration: InputDecoration(
                                  hintText: 'Write here the reason if you are selected Other',
                                  hintStyle: const TextStyle(color: Color(0xffA1A2A8),fontSize: 12),
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 12, horizontal: 12),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                    const BorderSide(width: 1, color: Color(0xffDADADA)),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                    const BorderSide(width: 1, color:Color(0xffEF2253)),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                )),
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: (){
                                  Navigator.of(context).pop();
                                },
                                child:Text("No",style: TextStyle(  fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    foreground:Paint()..shader = linearGradient,),
                                ),
                              ),

                              const SizedBox(width: 30,),
                              InkWell(
                                onTap: (){
                                  Navigator.of(context).pop();
                                },
                                child:const Text("Cancel",style: TextStyle(  fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                   color: Color(0xffEF2253)),
                              ),
                              )],
                          ),
                        ],
                      ),
                    ]),
              ));
        });
  }
}
