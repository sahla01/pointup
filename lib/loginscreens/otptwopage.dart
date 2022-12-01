import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pointup/loginscreens/resetpassword.dart';
import 'package:pointup/widgets/app_text.dart';

class OtpTwoPage extends StatefulWidget {
  const OtpTwoPage({Key? key}) : super(key: key);

  @override
  State<OtpTwoPage> createState() => _OtpTwoPageState();
}

class _OtpTwoPageState extends State<OtpTwoPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  size: 15,
                  color: Colors.black,
                ),
              );
            },
          ),
          backgroundColor: Colors.white,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          elevation: 0,
        ),
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText(
                      text: 'Verification Code',
                      fw: FontWeight.bold,
                      size: 18,
                      color: const Color(0xff19184D),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      ' Verify your mobile number with verification code\n'
                          'has sent to the number 997*******786',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                          color: Color(0xffA1A2AB),
                          height: 1.4),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AppText(
                      text: "Enter Code",
                      size: 12,
                      fw: FontWeight.w500,
                      color: const Color(0xff333333),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 50, right: 50, top: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _textFieldOTP(first: true, last: false),
                        _textFieldOTP(first: false, last: false),
                        _textFieldOTP(first: false, last: false),
                        _textFieldOTP(first: false, last: true),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: AppText(
                        text: "Resend  Code",
                        txtalign: TextAlign.left,
                        size: 12,
                        fw: FontWeight.w600,
                        color: const Color(0xffDADADA),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: AppText(
                        txtalign: TextAlign.right,
                        text: "Time Out: 04:59",
                        size: 10,
                        fw: FontWeight.w600,
                        color: const Color(0xff351070),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 70,),
              Container(
                height: 48,
                margin: const EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [Color(0xff19184D), Color(0xff530393)]),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: InkWell(
                  onTap: () {

                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => const ResetPassword()));

                  },
                  child: Center(
                      child: AppText(
                        text: 'Continue',
                        color: Colors.white,
                        size: 12,
                        fw: FontWeight.w700,
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _textFieldOTP({bool? first, last}) {
    return SizedBox(
      height: 60,
      child: AspectRatio(
        aspectRatio: 0.9,
        child: TextFormField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.isEmpty && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          cursorColor: const Color(0xff19184D),
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            fillColor: const Color(0xffF4F6FF),
            filled: true,
            isDense: true,
            counter: const Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Color(0xffDADADA)),
                borderRadius: BorderRadius.circular(4)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Color(0xffDADADA)),
                borderRadius: BorderRadius.circular(4)),
          ),
        ),
      ),
    );
  }
}
