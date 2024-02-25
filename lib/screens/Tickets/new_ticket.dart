import 'package:flutter/material.dart';
import 'package:pointup/widgets/app_text.dart';

class NewTicket extends StatefulWidget {
  const NewTicket({Key? key}) : super(key: key);

  @override
  State<NewTicket> createState() => _NewTicketState();
}

class _NewTicketState extends State<NewTicket> {
  final TextEditingController otherController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  final TextEditingController attachController = TextEditingController();
  var  dropdownvalue;
  var dropdownsubject;
  final Shader linearGradient = const LinearGradient(
    colors: <Color>[Color(0xff19184D), Color(0xff530393)],
  ).createShader(
    const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
  );

  @override
  Widget build(BuildContext context) {
    return Form(
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
                      const SizedBox(height: 10,),
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
                      const SizedBox(height: 10,),
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
                      const SizedBox(height: 10,),
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
                      const SizedBox(height: 10,),
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
                      const SizedBox(height: 10,),
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
                            suffixIcon: InkWell(
                                onTap: (){


                                },
                                child: const Icon(Icons.attach_file,color: Color(0xff31126E),))
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
    );
  }
}
