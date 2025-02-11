import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pointup/onboardscreen/onboarding_screen.dart';
import 'package:pointup/routes/routes_manager.dart';
import 'package:pointup/widgets/app_text.dart';
import 'package:svg_icon/svg_icon.dart';

class CustomDrwer extends StatefulWidget {
  const CustomDrwer({Key? key}) : super(key: key);

  @override
  State<CustomDrwer> createState() => _CustomDrwerState();
}

class _CustomDrwerState extends State<CustomDrwer> {
  final Shader linearGradient = const LinearGradient(
    colors: <Color>[Color(0xff19184D), Color(0xff530393)],
  ).createShader(
    const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
  );

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildHeader(context),
            buildMenuItems(context),
          ],
        ),
      ),
    );
  }
  Widget buildHeader(BuildContext context) => Material(
    child: Container(
      decoration: const BoxDecoration(
        gradient:
        LinearGradient(colors: [Color(0xff19184D), Color(0xff530393)]),
      ),
      padding: EdgeInsets.only(
          top: 24 + MediaQuery.of(context).padding.top, bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Padding(
          //   padding: const EdgeInsets.only(right: 250),
          //   child: InkWell(
          //     onTap: (){
          //       Navigator.pop(context);
          //     },
          //     child: const Icon(
          //       Icons.arrow_back_ios_new_outlined,
          //       size: 15,
          //       color: Colors.white,
          //     ),
          //   ),
          // ),
          Image.asset("assets/images/logos.png"),
          const SizedBox(height: 10),
          const Text(
            "MY WORLD Fashion",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w800,
                color: Color(0xffFFFFFF)),
          ),
          const SizedBox(height: 10),
          const Text(
            "Shop ID# 100234",
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Color(0xffFFFFFF)),
          ),
        ],
      ),
    ),
  );
  Widget buildMenuItems(BuildContext context) => Container(
    padding: const EdgeInsets.all(15),
    child: Wrap(
      children: [
        CustomListTile("assets/icons/qrcode-solid.svg", 'My Shop QR Code',()=>{
          Navigator.pushNamed(context, Routes.myShopQrcode)
        }),
        CustomListTile("assets/icons/user.svg",'User Information',()=>{
        Navigator.pushNamed(context, Routes.userInformation)
        }),
        CustomListTile("assets/icons/passwordlock.svg",'Change Password',()=>{
          Navigator.pushNamed(context, Routes.changePassword)
        }),
        CustomListTile("assets/icons/report.svg", 'Reports',()=>{
          Navigator.pushNamed(context,Routes.reportPage)
        }),
        CustomListTile("assets/icons/review.svg",'Customer Review & Rating',()=>{
          Navigator.pushNamed(context, Routes.customerViewAndRating)
        }),
        CustomListTile("assets/icons/contact.svg",'Contact Us',()=>{
          Navigator.pushNamed(context, Routes.contactus)
        }),
        CustomListTile("assets/icons/termsconditions.svg",'Terms & Conditions',()=>{
          Navigator.pushNamed(context,  Routes.termsAndCondition)
        }),
        CustomListTile("assets/icons/policy.svg",'Privacy & Policy',()=>{
          Navigator.pushNamed(context, Routes.privacyAndPolicy)
        }),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: InkWell(
            onTap: () {
              _showMyDialog();
            },
            child: Container(
              height: 42,
              width: 240,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [Color(0xff19184D), Color(0xff530393)]),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                  child: AppText(
                    text: "Sign Out",
                    size: 12,
                    fw: FontWeight.bold,
                    color: Colors.white,
                  )),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppText(
              text: "Version :1.4 (1.0)",
              size: 10,
              color: const Color(0xffA1A2A8),
              fw: FontWeight.w600,
            )
          ],
        ),
      ],
    ),
  );
  Future<void> _showMyDialog() async {
    return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
              content: Container(
                width: 250.0,
                height: 140.0,
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
                            Image.asset(
                              "assets/images/logout.png",
                              width: 52,
                              height: 52,
                            ),
                            Text(
                              "Logout",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  foreground: Paint()..shader = linearGradient),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                                "Are you sure wants to exit from \n Counter Application?",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xffA1A2A8),
                                    fontWeight: FontWeight.normal)),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text("No",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffF99F1E),
                                        fontSize: 14,
                                      )),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                InkWell(
                                  onTap: () {
                                   Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>OnBoardingScreen()),
                                           (Route<dynamic>route) => false);
                                  },
                                  child: Text(
                                    "Yes",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        foreground: Paint()
                                          ..shader = linearGradient),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ]),
              ));
        });
  }
}
class CustomListTile extends StatelessWidget {
  String icon;
  String text;
  final void Function()? onTap;
  CustomListTile(this.icon,this.text, this.onTap, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 48,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              Row(
                children:<Widget>[
                  SvgIcon(icon,color: const Color(0xff19184D), height: 16, width: 16,),
                  const SizedBox(width: 10,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(text,style: const TextStyle(
                      color: Color(0xff19184D),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),),
                  ),
                ],
              ),
              const Icon(Icons.arrow_forward_ios,size: 16, color: Color(0xff19184D),)
            ],
          ),
        ),
      ),
    );
  }
}
