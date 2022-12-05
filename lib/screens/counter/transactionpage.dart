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
  TextEditingController searchcontroller=TextEditingController();

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
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12,right: 12,top: 15),
                    child: ListTile(
                      onTap: (){},
                      selected: true,
                      shape: const RoundedRectangleBorder(
                          side: BorderSide(width: 0, color: Color(0xffA1A2A8)),
                          borderRadius: BorderRadius.all(Radius.circular(10.0),)
                      ),
                      selectedTileColor: const Color(0xffF4F6FF),
                      leading: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AppText(text: "All Transaction",size: 12,color: const Color(0xff333333),),
                      ),
                      title:Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 68),
                            child: DropdownButtonFormField<String>(
                              icon: const Icon(Icons.filter_alt_outlined,size: 15,color: Color(0xff360E70),),
                              value:dropdownvalue,
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 1, color: Color(0xff351070)),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 1, color: Color(0xff351070)),
                                      borderRadius: BorderRadius.circular(10)),
                                  hintStyle: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12, color: Color(0xff351070)),
                                  hintText: 'Filter',
                                  fillColor: const Color(0xffF4F6FF),
                                  filled: true
                              ),
                              onChanged: (filter) =>
                                  setState(() => dropdownvalue = filter),
                              validator: (value) =>
                              value == null
                                  ? 'field required'
                                  : null,
                              items: ['Point Credit','Point Redeem']
                                  .map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value,style: const TextStyle(fontSize: 12,color: Color(0xff333333)),),
                                    );
                                  }).toList(),
                            ),
                          ),
                        ],
                      ) ,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12,right: 12,top: 10),
                    child: ListTile(
                      onTap: (){},
                      selected: true,
                      shape: const RoundedRectangleBorder(
                          side: BorderSide(width: 0, color: Color(0xffA1A2A8)),
                          borderRadius: BorderRadius.all(Radius.circular(10.0),)
                      ),
                      selectedTileColor: const Color(0xffF4F6FF),
                      leading: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AppText(text: "Enter Mobile OR Member ID",size: 12,color: const Color(0xff333333),),
                      ),
                      title:Column(
                        children: [
                          TextFormField(
                              validator: (value) {
                                if(value == null || value.isEmpty){
                                  return "Enter a valid mobile or member id";
                                }
                                return null;
                              },

                              cursorColor: const Color(0xff333333),
                              controller:searchcontroller,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(vertical: 13, horizontal: 13),
                                isDense: true,
                                filled: true,
                                hintText: "Search",
                                suffixIcon: const Icon(Icons.search,size: 15,color: Color(0xff360E70)),
                                hintStyle: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12, color: Color(0xff351070)),
                                fillColor: const Color(0xffF4F6FF),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(width: 1,color: Color(0xff330F6C)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(width: 1,color: Color(0xff330F6C)),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                              )
                          ),
                        ],
                      ) ,

                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 13,top: 10,bottom: 10),
                        child: AppText(text: "Last 3 Weeks Transactions History ",size: 12,fw: FontWeight.bold,color: const Color(0xff000000),),
                      ),
                    ],
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height ,
                          child: ListView.builder(
                            // scrollDirection: Axis.vertical,
                              padding: const EdgeInsets.only(left: 10,right: 10),
                              itemCount: 5,
                              itemBuilder: (context,int index){
                                return InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const TransactionCredit()));
                                  },
                                  child: Card(
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(10.0),)
                                    ),
                                    child: ListTile(
                                      contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                      title:  Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          SizedBox(
                                            width: 130,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                AppText(text: "Member ID#",size: 12,fw: FontWeight.bold,color: const Color(0xff333333),),
                                                const SizedBox(
                                                  height: 8.0,
                                                ),
                                                AppText(text: "2356787697",size: 10,color: const Color(0xffA1A2A8),),
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
                                                      color: const Color(0xffA1A2A8)
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
                                  ),
                                );
                              }),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            AppText(text: "Load More",size: 12,fw: FontWeight.bold,color: Color(0xff19184D),)
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

