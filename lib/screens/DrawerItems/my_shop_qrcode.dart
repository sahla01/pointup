import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:pointup/widgets/app_text.dart';
import 'package:svg_icon/svg_icon.dart';

class MYshopQrCode extends StatefulWidget {
  const MYshopQrCode({Key? key}) : super(key: key);

  @override
  State<MYshopQrCode> createState() => _MYshopQrCodeState();
}

class _MYshopQrCodeState extends State<MYshopQrCode> {

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
              text: "Scan QR Code",
              color: Colors.white,
              size: 16,
              fw: FontWeight.bold,
            ),
          ),
        ),
        gradient: const LinearGradient(
            colors: [Color(0xff19184D), Color(0xff530393)]),
      ),
      backgroundColor: const Color(0xff000000),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 25,right: 20,top: 120),
                  height: 306,
                  width: 310,
                  decoration: BoxDecoration(
                      color: const Color(0xff1B2021),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 50,),
                      AppText(text: "MY WORLD Fashion",color: const Color(0xffFFFFFF),size: 12,fw: FontWeight.bold,),
                      const SizedBox(height: 20,),
                      Image.asset("assets/images/qrcode.png",height: 160,width: 160,)
                    ],
                  ),
                ),
                Positioned(
                    top: 80,
                    left: 140,
                    child: Image.asset("assets/images/logos.png",height: 74,width: 74,))
              ],
            ),
            const SizedBox(height: 25,),
            const Text("This QR Code is your shop details, If you share it\n"
                " with your shop customer they can scan it and\n "
                "submit receipts for rewards earning with their \n"
                "Pointupp Application",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12,color: Color(0xffA1A2A8),height: 1.5,),
            ),
            const SizedBox(height: 30,),
            Container(
              height: 48,
              width: 140,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  gradient: const LinearGradient(
                      colors: [
                        Color(0xff19184D),
                        Color(0xff530393)
                      ]
                  )
              ),
              child: Row(
                children: [
                  const SizedBox(width: 16,),
                  AppText(text: "Share  QR Code",size: 12,fw: FontWeight.w600,color: const Color(0xffFFFFFF),),
                  const SizedBox(width: 5,),
                  // Icon(Icons.share_outlined,size: 20,color: Color(0xffFFFFFF),)
                  const SvgIcon("assets/icons/share.svg",height: 20,width: 20,color: Color(0xffFFFFFF),)
                ],
              ),
            )

          ],
        ),
      ),

    );
  }
}
