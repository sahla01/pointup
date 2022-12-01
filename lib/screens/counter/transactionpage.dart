
import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:pointup/models/models.dart';
import 'package:pointup/widgets/app_text.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  var dropdownvalue;

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
          padding: const EdgeInsets.only(left: 70,right: 70),
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
              padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
              child: DropdownButtonFormField<String>(
                icon: const Icon(Icons.filter_alt_outlined,size: 15,color: Color(0xff360E70),),
                value:dropdownvalue,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 13, horizontal: 13),
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
                      fontWeight: FontWeight.w600,
                        fontSize: 12, color: Color(0xff351070)),
                    hintText: 'Filter',
                  fillColor: Color(0xffF4F6FF),
                  filled: true
                ),
                onChanged: (filter) =>
                    setState(() => dropdownvalue = filter),
                validator: (value) =>
                value == null
                    ? 'field required'
                    : null,
                items: ['All Transaction', 'Point Credit','Point Redeem']
                    .map<DropdownMenuItem<String>>(
                        (String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value,style: TextStyle(fontSize: 12,color: Color(0xff333333)),),
                      );
                    }).toList(),
              ),
            ),
            // Container(
            //   margin: const EdgeInsets.all(10.0),
            //   width: MediaQuery.of(context).size.width * 1.00,
            //   height: MediaQuery.of(context).size.height * 0.07,
            //   decoration: BoxDecoration(
            //     color: Color(0xffF4F6FF),
            //       borderRadius: BorderRadius.circular(10),
            //       border: Border.all(color: const Color(0xffDADADA))),
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       DropdownButton(
            //         value: dropdownvalue,
            //         icon: const Icon(Icons.filter_alt_outlined,size: 12,color: Color(0xff360E70),),
            //         items: items.map((String items) {
            //           return DropdownMenuItem(
            //             value: items,
            //             child: Text(items),
            //           );
            //         }).toList(),
            //         onChanged: (String? newValue) {
            //           setState(() {
            //             dropdownvalue = newValue!;
            //           });
            //         },
            //       ),
            //     ],
            //   ),
            // ),
            Container(
                margin: const EdgeInsets.all(10.0),
                width: MediaQuery.of(context).size.width * 1.00,
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                    color: Color(0xffF4F6FF),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xffDADADA))),
                child: Column()
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 13,top: 20,bottom: 10),
                      child: AppText(text: "Last 3 Weeks Transactions History ",size: 12,fw: FontWeight.bold,color: Color(0xff000000),),
                    ),
                  ],
                ),
            Container(
              height: MediaQuery.of(context).size.height * 0.9,
             child: ListView.builder(
                 padding: const EdgeInsets.only(left: 10,right: 10),
               itemCount: 5,
                 itemBuilder: (context,int index){
               return Card(
                 child: ListTile(
                   contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                   title:  Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     mainAxisSize: MainAxisSize.max,
                     children: [
                       SizedBox(
                         width: 130,
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             AppText(text: "Member ID#",size: 12,fw: FontWeight.bold,color: Color(0xff333333),),
                             const SizedBox(
                               height: 8.0,
                             ),
                             AppText(text: "2356787697",size: 10,color: Color(0xffA1A2A8),),
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
                                             color: Color(0xffA1A2A8))),
                                   ]),
                             ),
                           ],
                         ),
                       ),
                       SizedBox(
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(left: 60),
                               child: RichText(
                                 maxLines: 1,
                                 text: const TextSpan(
                                     text: '250',
                                     style: TextStyle(
                                         color: Color(0xff125DEF),
                                         fontSize: 12,fontWeight: FontWeight.bold),
                                     children: [
                                       TextSpan(
                                           text: ' Pts\n',
                                           style: TextStyle(
                                             fontWeight: FontWeight.bold,
                                               fontSize: 12,
                                               color: Color(0xff22ECBB)),
                                       )]),
                               ),
                             ),

                             const SizedBox(
                               height: 8.0,
                             ),
                             Padding(
                               padding: const EdgeInsets.only(left: 30),
                               child: AppText(
                                 text: "Bill # 1023456",
                                 size: 10,
                                 fw: FontWeight.bold,
                                   color: Color(0xffA1A2A8)
                               ),
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
                                             color: Color(0xffA1A2A8))),
                                   ]),
                             ),
                           ],
                         ),
                       )
                     ],
                   ),


                 ),
               );
             }),
           )

          ],
        ),
      ),



    );
  }
}
