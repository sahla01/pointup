import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:pointup/screens/Tickets/tickethistoryopen.dart';
import 'package:pointup/screens/customdrwer.dart';
import 'package:pointup/widgets/app_text.dart';

class TicketsPage extends StatefulWidget {
  const TicketsPage({Key? key}) : super(key: key);

  @override
  State<TicketsPage> createState() => _TicketsPageState();
}

class _TicketsPageState extends State<TicketsPage> with TickerProviderStateMixin {
  final TextEditingController otherController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  final TextEditingController attachController = TextEditingController();

  TabController? _tabcontroller;
  var  dropdownvalue;
  var dropdownticket;
  var dropdownsubject;


  final Shader linearGradient = const LinearGradient(
    colors: <Color>[Color(0xff19184D), Color(0xff530393)],
  ).createShader(
    const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
  );

  @override
  void initState() {
    _tabcontroller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabcontroller!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: NewGradientAppBar(
          title: Center(
            child: AppText(
              text: "Tickets",
              color: Colors.white,
              size: 16,
              fw: FontWeight.bold,
            ),
          ),
          actions: <Widget>[
            Image.asset("assets/images/noti.png"),
            // IconButton(
            //     onPressed: () {}, icon: const SvgIcon("assets/icons/notifi.svg"))
          ],
          gradient: const LinearGradient(
              colors: [Color(0xff19184D), Color(0xff530393)]),
        ),
        drawer: const CustomDrwer(),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(height: 5,),
              Container(
                height: 40,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(4,),
                      topLeft: Radius.circular(4)
                  ),
                ),
                child: TabBar(
                  controller: _tabcontroller,
                  labelColor: const Color(0xff340E6E),
                  unselectedLabelColor: const Color(0xffDADADA),
                  indicator:   const BoxDecoration(
                    border: Border(
                        left: BorderSide(width:1,color:Color(0xff340E6E)),
                        right: BorderSide(width: 1,color:Color(0xff340E6E)),
                        top: BorderSide(width: 1,color:Color(0xff340E6E)),
                        bottom: BorderSide(width: 1.5,color: Color(0xffF99F1E))
                    ),
                  ),
                  tabs: const [
                    Tab(
                      text: 'Ticket History',
                    ),
                    Tab(
                      text: 'New Ticket',
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabcontroller,
                  children: [
                    SingleChildScrollView(
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
                                        border: Border.all(width: 0.5,color: Color(0xff360E70)),
                                        borderRadius:
                                        BorderRadius.circular(4.0)),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.only(left: 7),
                                          child: Text('filter',style: TextStyle(
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
                                  dropdownvalue = newValue;
                                } );
                              },
                            ),
                          ),
                          const SizedBox(height: 20,),
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
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const TicketHistoryOpen()));
                                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>const TicketHistoryClosed()));

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
                                                        AppText(
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
                    Form(
                      child: SizedBox(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height,
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          // left: 10,
                                          top: 20,
                                          right: 20,
                                        ),
                                        child: AppText(
                                          text: "Ticket Type",
                                          color: const Color(0xff333333),
                                          size: 12,
                                          fw: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      DropdownButtonFormField<String>(
                                        icon: const Icon(Icons.keyboard_arrow_down_rounded),
                                        value:dropdownvalue,
                                        decoration: InputDecoration(
                                            contentPadding: const EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 10),
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
                                                fontSize: 12, color: Color(0xff333333)),
                                            hintText: 'Technical Support',
                                            fillColor: const Color(0xffF4F6FF),
                                            filled: true
                                        ),
                                        onChanged: (oldticket) =>
                                            setState(() => dropdownvalue = oldticket),
                                        validator: (value) =>
                                        value == null
                                            ? 'field required'
                                            : null,
                                        items: ['Open','Closed']
                                            .map<DropdownMenuItem<String>>(
                                                (String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(value,style: const TextStyle(fontSize: 12,color: Color(0xff333333)),),
                                              );
                                            }).toList(),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          // left: 10,
                                          top: 5,
                                          right: 20,
                                        ),
                                        child: AppText(
                                          text: "Subject ",
                                          color: const Color(0xff333333),
                                          size: 12,
                                          fw: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      DropdownButtonFormField<String>(
                                        icon: const Icon(Icons.keyboard_arrow_down_rounded),
                                        value:dropdownsubject,
                                        decoration: InputDecoration(
                                            contentPadding: const EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 10),
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
                                                fontSize: 12, color: Color(0xff333333)),
                                            hintText: 'Other',
                                            fillColor: const Color(0xffF4F6FF),
                                            filled: true
                                        ),
                                        onChanged: (subject) =>
                                            setState(() => dropdownsubject = subject),
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
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          // left: 10,
                                          top: 5,
                                          right: 20,
                                        ),
                                        child: AppText(
                                          text: "Other",
                                          color: const Color(0xff333333),
                                          size: 12,
                                          fw: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      TextFormField(
                                          validator: (value) {
                                            if (value == null || value.isEmpty) {
                                              return "Enter a valid shop id";
                                            }
                                            return null;
                                          },
                                          controller:otherController ,
                                          cursorColor: const Color(0xff351070),
                                          decoration: InputDecoration(
                                            contentPadding: const EdgeInsets.symmetric(
                                                vertical: 13, horizontal: 13),
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
                                                    width: 0.5, color: Color(0xffEF2253)),
                                                borderRadius: BorderRadius.circular(10)),
                                            hintStyle: const TextStyle(
                                                fontSize: 12, color: Color(0xffA1A2A8)),
                                            hintText: ' Write subject here if you are selected “Other”',
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 20, right: 20),
                                        child: AppText(
                                          text: "Message",
                                          color: const Color(0xff333333),
                                          size: 12,
                                          fw: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      TextFormField(
                                        maxLines: 3,
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty ||
                                                !value.contains('@') ||
                                                !value.contains('.')) {
                                              return "Enter a valid username";
                                            }
                                            return null;
                                          },
                                          cursorColor: const Color(0xff351070),
                                          controller:messageController,
                                          decoration: InputDecoration(
                                            contentPadding: const EdgeInsets.symmetric(
                                                vertical: 13, horizontal: 13),
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
                                            hintText: 'Write something .........',
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                             top: 20, right: 20),
                                        child: AppText(
                                          text: "Attachement",
                                          color: const Color(0xff333333),
                                          size: 12,
                                          fw: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      TextFormField(
                                        cursorColor: const Color(0xff351070),
                                        controller: attachController,
                                        decoration: InputDecoration(
                                          contentPadding: const EdgeInsets.symmetric(
                                              vertical: 13, horizontal: 13),
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
                                          hintText: "Attach File",
                                          suffixIcon: const Icon(Icons.attach_file,color: Color(0xff31126E),)
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(right: 15),
                                            child: AppText(text: "+ Add Attachement",size: 12,fw: FontWeight.w700,color: const Color(0xff31126E),),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        height: 48,
                                        margin: const EdgeInsets.all(10),
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          gradient: const LinearGradient(
                                              colors: [Color(0xff19184D), Color(0xff530393)]),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: InkWell(
                                          onTap: () {

                                          },
                                          child: Center(
                                              child: AppText(
                                                text: 'Submit',
                                                color: Colors.white,
                                                size: 12,
                                                fw: FontWeight.w700,
                                              )),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
