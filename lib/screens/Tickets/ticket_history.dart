import 'package:flutter/material.dart';
import 'package:pointup/routes/routes_manager.dart';
import 'package:pointup/widgets/app_text.dart';

class TicketHistory extends StatefulWidget {
  const TicketHistory({Key? key}) : super(key: key);

  @override
  State<TicketHistory> createState() => _TicketHistoryState();
}

class _TicketHistoryState extends State<TicketHistory> {
  var dropdownticket;
  final Shader linearGradient = const LinearGradient(
    colors: <Color>[Color(0xff19184D), Color(0xff530393)],
  ).createShader(
    const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 2),
                  child: AppText(
                    text: "Ticket Type",
                    size: 12,
                    fw: FontWeight.w600,
                    color: const Color(0xff333333),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4,right: 4,top: 10),
              child: DropdownButtonFormField<String>(
                icon:   InkWell(
                  child: Container(
                      height: 23,
                      width: 50,
                      decoration: BoxDecoration(

                          shape: BoxShape.rectangle,
                          border: Border.all(width: 0.5,color: const Color(0xff360E70)),
                          borderRadius:
                          BorderRadius.circular(4.0)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 7),
                            child: Text('Filter',style: TextStyle(
                                fontSize: 10,fontWeight: FontWeight.w600,color: Color(0xff360E70)
                            ),),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                              Icons.filter_alt_outlined,
                              size: 10,color:
                          Color(0xff360E70)
                          ),
                        ],
                      )),
                ),
                value: dropdownticket,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 0.0, horizontal: 15),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 0.5, color: Color(0xffDADADA)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 0.5, color: Color(0xff351070)),
                      borderRadius: BorderRadius.circular(10)),
                  hintStyle: const TextStyle(height: 1.8,
                      fontSize: 12, color: Color(0xff333333)),
                  hintText: 'All Tickets',
                  fillColor: const Color(0xffF4F6FF),
                  filled: true,

                ),
                validator: (value) =>
                value == null
                    ? 'field required'
                    : null,
                items: ['Open', 'Closed']
                    .map<DropdownMenuItem<String>>(
                        (String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value, style: const TextStyle(
                            fontSize: 12, color: Color(0xff333333)),),
                      );
                    }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                     dropdownticket= newValue;
                  } );
                },
              ),
            ),
            const SizedBox(height: 20,),
            // dropdownticket=='Open'?
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height ,
                    child: ListView.builder(
                      // scrollDirection: Axis.vertical,
                        itemCount: 5,
                        itemBuilder: (context,int index){
                          return InkWell(
                            onTap: (){
                              dropdownticket=='Open'? Navigator.pushNamed(context, Routes.ticketHistoryOpen):
                              dropdownticket=='Closed'? Navigator.pushNamed(context,Routes.ticketHistoryClosed):
                              Navigator.pushNamed(context,Routes.ticketHistoryOpen);
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
                                          AppText(text: "Ticket #23567",size: 12,fw: FontWeight.bold,color: const Color(0xff333333),),
                                          const SizedBox(
                                            height: 5.0,
                                          ),
                                          AppText(text: "Technical Support",size: 10,color: const Color(0xff333333),),
                                          const SizedBox(
                                            height: 5.0,
                                          ),
                                          Row(
                                            children: [
                                              AppText(text: "13/04/2022,",size: 10,color: const Color(0xffA1A2A8),),
                                              const SizedBox(width: 5,),
                                              AppText(text: "03:46 PM",size: 10,color: const Color(0xffA1A2A8),)
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          AppText(
                                            text: "Status",
                                            size: 12,
                                            fw: FontWeight.bold,
                                            color: const Color(0xff333333),),
                                          const SizedBox(
                                            height: 5.0,
                                          ),
                                          dropdownticket=='Open'?AppText(
                                              text: "Open",
                                              size: 12,
                                              color: const Color(0xff39AE58)
                                          ):dropdownticket=='Closed'?
                                          AppText(
                                              text: "Closed",
                                              size: 12,
                                              color: const Color(0xffEF2253)
                                          ):AppText(
                                              text: "Open",
                                              size: 12,
                                              color: const Color(0xff39AE58)
                                          ),
                                          const SizedBox(
                                            height: 8.0,
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
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
