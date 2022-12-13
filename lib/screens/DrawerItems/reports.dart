import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:pointup/widgets/app_text.dart';
import 'package:svg_icon/svg_icon.dart';

class ReportsPage extends StatefulWidget {
  const ReportsPage({Key? key}) : super(key: key);

  @override
  State<ReportsPage> createState() => _ReportsPageState();
}

class _ReportsPageState extends State<ReportsPage> {
  final _formKey = GlobalKey<FormState>();

  String _displayText(String begin, DateTime? date) {
    if (date != null) {
      return '$begin Date: ${date.day.toString()}/${date.month.toString()
          .padLeft(2, '0')}/${date.year.toString().padLeft(2, '0')}';
    } else {
      return 'Choose The Date';
    }
  }

  var dropdownticket;
  TextEditingController startdateController = TextEditingController();
  TextEditingController enddateController = TextEditingController();

  DateTime? startDate, endData;

  String? startDateValidator(value) {
    if (startDate == null) return "select the date";
  }

  String? endDateValidator(value) {
    if (startDate != null && endData == null) {
      return "select Both data";
    }
    if (endData == null) return "select the date";
    if (endData!.isBefore(startDate!)) {
      return "End date must be after startDate";
    }

    return null;
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
          title: Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 40,),
              child: AppText(
                txtalign: TextAlign.left,
                text: "Report",
                color: Colors.white,
                size: 16,
                fw: FontWeight.bold,
              ),
            ),
          ),
          gradient: const LinearGradient(
              colors: [Color(0xff19184D), Color(0xff530393)]),
        ),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 20,
                        right: 20,
                      ),
                      child: AppText(
                        text: "Transaction Type",
                        color: const Color(0xff333333),
                        size: 12,
                        fw: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: DropdownButtonFormField<String>(
                        icon:   const SizedBox.shrink(),
                        value: dropdownticket,
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
                                    width: 1, color: Color(0xff351070)),
                                borderRadius: BorderRadius.circular(10)),
                            hintStyle: const TextStyle(height: 1.8,
                                fontSize: 12, color: Color(0xff333333)),
                            hintText: 'All Transaction',
                            fillColor: const Color(0xffF4F6FF),
                            filled: true,
                            suffixIcon: SizedBox(
                              width: 90,
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                   dropdownticket.clear();
                                   FocusScope.of(context).unfocus();
                                  });
                                },
                                icon: Container(
                                    width: 54,
                                    height: 23,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(width: 0.5,
                                            color: const Color(0xff360E70))
                                    ),
                                    child: Row(
                                      children: [
                                        const SizedBox(width: 10,),
                                        AppText(text: "Filter",
                                          size: 8,
                                          color: const Color(0xff360E70),
                                          fw: FontWeight.w600,),
                                        const SizedBox(width: 6,),
                                        const Icon(
                                            Icons.filter_alt_outlined, size: 10,
                                            color: Color(0xff360E70)),
                                      ],
                                    )),
                              ),
                            )
                        ),
                        onChanged: (ticket) =>
                            setState(() => dropdownticket = ticket),
                        validator: (value) =>
                        value == null
                            ? 'field required'
                            : null,
                        items: ['Point Credit', 'Point Redeem']
                            .map<DropdownMenuItem<String>>(
                                (String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value, style: const TextStyle(
                                    fontSize: 12, color: Color(0xff333333)),),
                              );
                            }).toList(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 10,
                        right: 20,
                      ),
                      child: AppText(
                        text: "From Date",
                        color: const Color(0xff333333),
                        size: 12,
                        fw: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10.0, left: 10, right: 10,),
                      child: TextFormField(
                        cursorColor: const Color(0xff351070),
                        controller: startdateController,
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
                                  width: 1, color: Color(0xff351070)),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          hintStyle: const TextStyle(fontSize: 12,
                              color: Color(0xffA1A2A8)),
                          hintText: 'DD/MM/YY',
                          suffixIcon: const Padding(
                            padding: EdgeInsets.all(16),
                            child: SvgIcon('assets/icons/calender.svg',
                              color: Color(0xff351070),),
                          ),
                        ),
                        onTap: () async {
                          startDate = await pickDate();
                          startdateController.text = _displayText(
                              "From", startDate);
                          setState(() {});
                        },
                        readOnly: true,
                        validator: startDateValidator,
                        style: const TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                            color: Color(0xff333333)),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 10,
                        right: 20,
                      ),
                      child: AppText(
                        text: "To Date",
                        color: const Color(0xff333333),
                        size: 12,
                        fw: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10.0, left: 10, right: 10,),
                      child: TextFormField(
                        cursorColor: const Color(0xff351070),
                        controller: enddateController,
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
                                  width: 1, color: Color(0xff351070)),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          hintStyle: const TextStyle(fontSize: 12,
                              color: Color(0xffA1A2A8)),
                          hintText: 'DD/MM/YY',
                          suffixIcon: const Padding(
                            padding: EdgeInsets.all(16),
                            child: SvgIcon('assets/icons/calender.svg',
                              color: Color(0xff351070),),
                          ),
                        ),
                        onTap: () async {
                          endData = await pickDate();
                          enddateController.text = _displayText("To", endData);
                          setState(() {});
                        },
                        validator: endDateValidator,
                        style: const TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                            color: Color(0xff333333)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Container(
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
                            _formKey.currentState?.validate();
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>const OtpTwoPage()));

                          },
                          child: Center(child: AppText(text: 'Submit',
                            color: Colors.white,
                            size: 12,
                            fw: FontWeight.w700,)),

                        ),
                      ),
                    ),
                    const SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppText(
                          text: "Report will be generate within 5 minute and send \n to the regestred email",
                          height: 1.5,
                          size: 12,
                          color: const Color(0xff333333),
                        ),
                      ],
                    )

                  ],
                ),
              ],
            ),
          ),
        ),

      ),
    );
  }

  Future<DateTime?> pickDate() async {
    return await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2022),
      lastDate: DateTime(2999),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: Color(0xff351070),
              onPrimary: Color(0xffFFFFFF),
              // onPrimary: Color(0xffF99F1E),
              onSurface: Color(0xffA1A2A8),
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                primary: const Color(0xffF99F1E), // button text color
              ),
            ),
          ),
          child: child!,
        );
      },
    );
  }


}