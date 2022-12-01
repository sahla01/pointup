import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pointup/loginscreens/otptwopage.dart';
import 'package:pointup/widgets/app_text.dart';
import 'package:svg_icon/svg_icon.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final TextEditingController idController= TextEditingController();
  final TextEditingController userController= TextEditingController();

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
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText(
                        text: "Forgot Password",
                        color: const Color(0xff19184D),
                        size: 18,
                        fw: FontWeight.w700,
                      ),
                      const SizedBox(height: 20,),
                      AppText(
                        text: "Please fill  your shop ID and  User Name",
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
                          padding: const EdgeInsets.only(top: 60,left: 20,right: 20),
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
                              cursorColor: const Color(0xff351070),
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
                                prefixIcon: const Padding(
                                  padding: EdgeInsets.all(16),
                                  child: SvgIcon('assets/icons/shop.svg',color: Color(0xffA1A2A8),),
                                ),
                              )
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:20,right: 20,top: 20),
                          child: AppText(text: "User Name",color: const Color(0xff333333),size: 12,fw: FontWeight.w600,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20,),
                          child: TextFormField(
                              validator: (value) {
                                if(value == null || value.isEmpty){
                                  return "Enter a valid user name";
                                }
                                return null;
                              },
                              cursorColor: const Color(0xff351070),
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
                                prefixIcon: const Padding(
                                  padding: EdgeInsets.all(16),
                                  child: SvgIcon('assets/icons/user.svg',color: Color(0xffA1A2A8),),
                                ),
                              )
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 20),
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
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const OtpTwoPage()));

                              },
                              child: Center(child: AppText(text: 'Send OTP',color: Colors.white,size: 12,fw: FontWeight.w700,)),

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
}
