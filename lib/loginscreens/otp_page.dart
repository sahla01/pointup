import 'package:flutter/material.dart';
import 'package:pointup/routes/routes_manager.dart';
import 'package:pointup/widgets/app_text.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  final Shader linearGradient = const LinearGradient(
    colors: <Color>[Color(0xff19184D), Color(0xff530393)],
  ).createShader(
    const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
  );
  final  otpkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Container(
          height: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [Color(0xff19184D), Color(0xff530393)])),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: IconButton(onPressed:(){
                        Navigator.of(context).pop();
                      },icon: const Icon(Icons.arrow_back_ios_new_outlined,size: 15,color: Color(0xffFFFFFF),)),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/pointuplogo.png",
                      height: 26.93,
                      width: 113.8,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  width: 340,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Form(
                    key: otpkey,
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
                                color: Theme.of(context).primaryColor,
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
                                child: Text(
                                  "Time Out: 04:59",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      foreground: Paint()..shader = linearGradient),
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
                                colors: [
                                  Color(0xff19184D),
                                  Color(0xff530393)
                                ]),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, Routes.bottomNavBar);
                                },
                            child: Center(
                                child: AppText(
                                  text: 'Continue',
                                  color: Colors.white,
                                  size: 12,
                                  fw: FontWeight.w700,
                                )),
                          ),
                        ),
                        const SizedBox(height: 90,),

                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height:50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText(
                      text: 'Are you intrested to Join this program?',
                      size: 12,
                      color: const Color(0xffFFFFFF),
                      fw: FontWeight.w400,
                    ),
                    const SizedBox(
                      width: 1,
                    ),
                    AppText(
                      text: 'Send Request',
                      size: 12,
                      fw: FontWeight.w700,
                      color: Theme.of(context).secondaryHeaderColor,
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

  Widget _textFieldOTP({bool? first, last}) {
    return SizedBox(
      height: 60,
      child: AspectRatio(
        aspectRatio: 0.9,
        child: TextFormField(
          autofocus: false,
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
            errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffEF2253),width: 0.5)),
            focusedErrorBorder: const OutlineInputBorder(
              borderSide:BorderSide(color:Color(0xffEF2253), width: 0.5),),
            fillColor: const Color(0xffF4F6FF),
            filled: true,
            isDense: true,
            counter: const Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(width: 0.5, color: Color(0xffDADADA)),
                borderRadius: BorderRadius.circular(4)),
            focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(width: 0.5, color: Color(0xff351070)),
                borderRadius: BorderRadius.circular(4)),
          ),
        ),
      ),
    );
  }
}
