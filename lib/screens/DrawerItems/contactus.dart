import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:pointup/widgets/app_text.dart';

class ContactUs extends StatelessWidget {
  ContactUs({Key? key}) : super(key: key);

  final Shader linearGradient = const LinearGradient(
    colors: <Color>[Color(0xff19184D), Color(0xff530393)],
  ).createShader(
    const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
  );

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
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 40),
            child: AppText(
              txtalign: TextAlign.left,
              text: "Contact Us",
              color: Colors.white,
              size: 16,
              fw: FontWeight.bold,
            ),
          ),
        ),
        gradient: const LinearGradient(
            colors: [Color(0xff19184D), Color(0xff530393)]),
      ),
      body: SizedBox(
        width:double.infinity ,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              Text(
                "Get In Touch",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()..shader = linearGradient),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("We are happy to hearing from you!!",
                style: TextStyle(
                    color: Color(0xff333333),
                    fontSize: 14),),
              Padding(
                padding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 30.0,),
                child: Card(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 0.5,color: Color(0xffDADADA)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                      title: Text("Customer Service Call Center",
                        style: TextStyle(
                            foreground: Paint()..shader = linearGradient,
                            fontSize: 14,
                            fontWeight: FontWeight.bold
                        ),),
                    subtitle: const Text("+91 9967879788",style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Color(0xff333333)),),
                    trailing: Image.asset("assets/images/Call on speaker.png"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 5.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 0.5,color: Color(0xffDADADA)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                    title: Text("Email",
                      style: TextStyle(
                          foreground: Paint()..shader = linearGradient,
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                      ),),
                    subtitle: const Text("info@pointupp.com",style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Color(0xff333333)),),
                    trailing:Image.asset("assets/images/Email.png"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 5.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 0.5,color: Color(0xffDADADA)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                    title: Text("Whatsapp Chat",
                      style: TextStyle(
                          foreground: Paint()..shader = linearGradient,
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                      ),),
                    subtitle: const Text("+91 9967879788",style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Color(0xff333333)),),
                    trailing:Image.asset("assets/images/Whatsapp.png"),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(text: "Be with our social networks",size: 12,color: const Color(0xffA1A2A8),),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/facebook.png"),
                  const SizedBox(width: 13,),
                  Image.asset("assets/images/instagram.png"),
                  const SizedBox(width: 13,),
                  Image.asset("assets/images/linkedin.png",),
                  const SizedBox(width: 13,),
                  Image.asset("assets/images/youtube.png",),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
