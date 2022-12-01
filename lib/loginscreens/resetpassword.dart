import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:pointup/loginscreens/signin.dart';
import 'package:pointup/widgets/app_text.dart';
import 'package:svg_icon/svg_icon.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword>
    with TickerProviderStateMixin {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController =
      TextEditingController();
  var loginkey = GlobalKey<FormState>();

  var visibility = true;

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
        backgroundColor: Colors.white,
        body: Form(
          key: loginkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText(
                        text: "Reset Password",
                        color: const Color(0xff19184D),
                        size: 18,
                        fw: FontWeight.w700,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AppText(
                        text: "Please reset your password",
                        color: const Color(0xffA1A2A8),
                        size: 12,
                        fw: FontWeight.w400,
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 20, top: 70, left: 20),
                          child: AppText(
                            text: "New Password",
                            color: const Color(0xff333333),
                            size: 12,
                            fw: FontWeight.w600,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10.0, left: 20, right: 20),
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Enter a Valid Password";
                              } else if (passwordController.text.length < 8) {
                                return "password must be 8 characters";
                              }
                              return null;
                            },
                            cursorColor: const Color(0xff351070),
                            controller: passwordController,
                            obscureText: visibility,
                            obscuringCharacter: "*",
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
                                        width: 1, color: Color(0xffDADADA)),
                                    borderRadius: BorderRadius.circular(10)),
                                hintStyle: const TextStyle(
                                    fontSize: 12, color: Color(0xffA1A2A8)),
                                hintText: "Enter Password",
                                prefixIcon: const Padding(
                                  padding: EdgeInsets.all(16),
                                  child: SvgIcon(
                                    'assets/icons/passwordlock.svg',
                                    color: Color(0xffA1A2A8),
                                  ),
                                ),
                                suffixIcon: const Icon(
                                    Icons.visibility_outlined,
                                    color: Color(0xff351070))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 20, top: 20, left: 20),
                          child: AppText(
                            text: "Confirm Password",
                            color: const Color(0xff333333),
                            size: 12,
                            fw: FontWeight.w600,
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, left: 20, right: 20),
                            child: TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Enter a Valid Password";
                                } else if (passwordController.text.length < 8) {
                                  return "password must be 8 characters";
                                }
                                return null;
                              },
                              cursorColor: const Color(0xff351070),
                              controller: confirmpasswordController,
                              obscureText: visibility,
                              obscuringCharacter: "*",
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
                                        width: 1, color: Color(0xffDADADA)),
                                    borderRadius: BorderRadius.circular(10)),
                                hintStyle: const TextStyle(
                                    fontSize: 12, color: Color(0xffA1A2A8)),
                                hintText: "Confirm Password",
                                prefixIcon: const Padding(
                                  padding: EdgeInsets.all(16),
                                  child: SvgIcon(
                                    'assets/icons/passwordlock.svg',
                                    color: Color(0xffA1A2A8),
                                  ),
                                ),
                                suffixIcon: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (visibility == true) {
                                          visibility = false;
                                        } else {
                                          visibility = true;
                                        }
                                      });
                                    },
                                    child: visibility == true
                                        ? const Icon(
                                            Icons.visibility_off_outlined,
                                            color: Color(0xff351070))
                                        : const Icon(Icons.visibility,
                                            color: Color(0xff351070))),
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Container(
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
                                _showMyDialog();
                              },
                              child: Center(
                                  child: AppText(
                                text: 'Reset',
                                color: Colors.white,
                                size: 12,
                                fw: FontWeight.w700,
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _showMyDialog() async {
    Future.delayed(const Duration(seconds: 2), () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const SignIn()));
          });
    return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
              content: Container(
            width: 250.0,
            height: 120.0,
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: [
                        Image.asset("assets/images/sucessfull.png",width: 52,height: 52,
                        ),
                        // SvgIcon("assets/icons/sucess.svg",width: 52,height: 52,),
                        // Lottie.asset(
                        //   'assets/confirm.json',
                        //   width: 60,
                        //   height: 60,
                        //   controller: _controller,
                        //   onLoaded: (composition) {
                        //     _controller
                        //       ..duration = composition.duration
                        //       ..forward();
                        //     Future.delayed(const Duration(seconds: 2), () {
                        //       Navigator.pushReplacement(
                        //           context,
                        //           MaterialPageRoute(
                        //               builder: (context) => const SignIn()));
                        //     });
                        //   },
                        // ),
                        AppText(
                          text: 'Reset Done!',
                          size: 14,
                          fw: FontWeight.w700,
                          color: const Color(0xff351070),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        AppText(
                          text: 'Yor password reset is successfully done.',
                          size: 12,
                          fw: FontWeight.w400,
                          color: const Color(0xffA1A2A8),
                        ),
                      ],
                    ),
                  ),
                ]),
          ));
        });
  }
}
