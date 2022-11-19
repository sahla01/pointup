import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pointup/loginscreens/forgotpassword.dart';
import 'package:pointup/loginscreens/otppage.dart';
import 'package:pointup/widgets/app_text.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController idController= TextEditingController();
  final TextEditingController userController= TextEditingController();
  final TextEditingController passwordController= TextEditingController();
  var loginkey = GlobalKey<FormState>();
  bool? checked = false;

  var visibility = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(Icons.arrow_back_ios_new_outlined,
                size: 15, color: Colors.black,
            ),
            );
          },
        ),
        backgroundColor:Colors.white ,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Form(
        key: loginkey,
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AppText(
                        text: "Welcome Back!",
                        color: const Color(0xff19184D),
                        fw: FontWeight.bold,
                        size: 24,
                      ),
                      const SizedBox(height: 10,),
                      AppText(
                        text: "Sign In",
                        color: const Color(0xff19184D),
                        size: 18,
                        fw: FontWeight.w700,
                      ),
                      const SizedBox(height: 15,),
                      AppText(
                        text: "Please sing in to your counter",
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
                          padding: const EdgeInsets.only(right: 280,top: 30),
                          child: AppText(text: "Shop ID",color: const Color(0xff333333),size: 12,fw: FontWeight.w600,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20,),
                          child: TextFormField(
                              validator: (value) {
                                if(value == null || value.isEmpty){
                                  return "Enter a valid shop id";
                                }
                                return null;
                              },
                              controller: idController,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(vertical: 13, horizontal: 13),
                                isDense: true,
                                filled: true,
                                fillColor: const Color(0xffF4F6FF),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(width: 1,color: Color(0xffDADADA)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(width: 1,color: Color(0xffDADADA)),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                hintStyle: const TextStyle(fontSize: 12,color:Color(0xffA1A2A8) ),
                                hintText:' Enter Shop ID',
                                prefixIcon: const Icon(Icons.store_mall_directory_rounded,color:Color(0xffA1A2A8) ,),
                              )
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 230,top: 20),
                          child: AppText(text: "Enter User Name",color: const Color(0xff333333),size: 12,fw: FontWeight.w600,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20,),
                          child: TextFormField(
                              validator: (value) {
                                if (value == null ||
                                    value.isEmpty ||
                                    !value.contains('@') ||
                                    !value.contains('.')) {
                                  return "Enter a valid username";
                                }
                                return null;
                              },
                              controller: userController,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(vertical: 13, horizontal: 13),
                                isDense: true,
                                filled: true,
                                fillColor: const Color(0xffF4F6FF),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(width: 1,color: Color(0xffDADADA)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(width: 1,color: Color(0xffDADADA)),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                hintStyle: const TextStyle(fontSize: 12,color:Color(0xffA1A2A8) ),
                                hintText:' Enter User Name',
                                prefixIcon: const Icon(Icons.person_outline_rounded,color:Color(0xffA1A2A8) ,),
                              )
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 235,top: 20),
                          child: AppText(text: "Enter Password",color: const Color(0xff333333),size: 12,fw: FontWeight.w600,),
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
                              controller: passwordController,
                              obscureText: visibility,
                              // obscureText: visibility,
                              obscuringCharacter: "*",
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(vertical: 13, horizontal: 13),
                                isDense: true,
                                filled: true,
                                fillColor: const Color(0xffF4F6FF),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(width: 1,color: Color(0xffDADADA)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(width: 1,color: Color(0xffDADADA)),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                hintStyle: const TextStyle(fontSize: 12,color:Color(0xffA1A2A8) ),
                                hintText: "Enter Password",
                                prefixIcon: const Icon(Icons.lock_outline_rounded,color:Color(0xffA1A2A8) ,),
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
                                        ? const Icon(Icons.visibility_off,color: Color(0xff19184D))
                                        : const Icon(Icons.visibility,color: Color(0xff19184D))),
                              ),
                            )),
                        Padding(
                          padding:
                          const EdgeInsets.only(left: 8,top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Checkbox(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  side: const BorderSide(width: 1,color:Color(0xffDADADA)),
                                  checkColor: const Color(0xff19184D),
                                  activeColor:const Color(0xffF4F6FF) ,
                                  // fillColor: MaterialStateProperty.all(Color(0xffF4F6FF)),
                                  value: checked,
                                  onChanged: (value) {
                                    setState(() {
                                      checked = value;
                                    });
                                  }),
                              AppText(text: 'Remember Me',size: 12,color: const Color(0xff333333),fw: FontWeight.w400,),
                              const SizedBox(width: 100,),
                              InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgotPasswordPage()));
                                  },
                                  child: AppText(
                                    text: 'Forgot Password ?',
                                    size: 12,
                                    fw: FontWeight.w700,
                                    color: const Color(0xff19184D),
                                  )
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            height: 48,
                            margin: const EdgeInsets.all(20),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color.fromRGBO(25, 24, 77, 1),
                                    Color.fromRGBO(25, 24, 77, 1),
                                    Color.fromRGBO(28, 43, 174, 1)
                                  ]),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: InkWell(
                              onTap: (){
                                if(loginkey.currentState!.validate() && checked==true){
                                  idController.clear();
                                  userController.clear();
                                  passwordController.clear();
                                }
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const OtpPage()));

                              },
                              child: Center(child: AppText(text: 'Send OTP',color: Colors.white,size: 12,fw: FontWeight.w700,)),

                            ),
                          ),
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.only(left: 40,top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              AppText(text: 'Are you intrested to Join this program?',size: 12,color: const Color(0xff19184D),fw: FontWeight.w400,),
                              const SizedBox(width: 1,),
                              AppText(text: 'Send Request',size: 12,fw: FontWeight.w700,color: const Color(0xffF99F1E),)
                            ],
                          ),
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
    );
  }
}
