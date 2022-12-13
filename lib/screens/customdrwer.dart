import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pointup/onboardscreen/onboardingscreen.dart';
import 'package:pointup/screens/DrawerItems/changepassword/changepassword.dart';
import 'package:pointup/screens/DrawerItems/contactus.dart';
import 'package:pointup/screens/DrawerItems/customerreviewandrating/customerreviewandrating.dart';
import 'package:pointup/screens/DrawerItems/myshopqrcode.dart';
import 'package:pointup/screens/DrawerItems/privacyandpolicy.dart';
import 'package:pointup/screens/DrawerItems/reports.dart';
import 'package:pointup/screens/DrawerItems/termsandcondition.dart';
import 'package:pointup/screens/DrawerItems/userinfo.dart';
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
               Padding(
                padding: EdgeInsets.only(right: 250),
                child: InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    size: 15,
                    color: Colors.white,
                  ),
                ),
              ),
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
            ListTile(
              leading: const SvgIcon(
                "assets/icons/qr.svg",
                color: Color(0xff19184D),
                height: 16,
                width: 16,
              ),
              title: const Text(
                'My Shop QR Code',
                style: TextStyle(
                  color: Color(0xff19184D),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Color(0xff19184D),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MYshopQrCode()));
              },
            ),
            ListTile(
              leading: const SvgIcon(
                "assets/icons/user.svg",
                color: Color(0xff19184D),
                height: 16,
                width: 16,
              ),
              title: const Text(
                'User Information',
                style: TextStyle(
                  color: Color(0xff19184D),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Color(0xff19184D),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const UserInformation()));
              },
            ),
            ListTile(
              leading: const SvgIcon(
                "assets/icons/passwordlock.svg",
                color: Color(0xff19184D),
                height: 16,
                width: 16,
              ),
              title: const Text(
                'Change Password',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff19184D),
                  fontWeight: FontWeight.w600,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Color(0xff19184D),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ChangePassword()));
              },
            ),
            ListTile(
              leading: const SvgIcon(
                "assets/icons/report.svg",
                color: Color(0xff19184D),
                height: 16,
                width: 16,
              ),
              title: const Text(
                'Reports',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff19184D),
                  fontWeight: FontWeight.w600,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Color(0xff19184D),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ReportsPage()));
              },
            ),
            ListTile(
              leading: const SvgIcon(
                "assets/icons/review.svg",
                color: Color(0xff19184D),
                height: 16,
                width: 16,
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Customer Review & Rating',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff19184D),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12, right: 1),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffF99F1E),
                      ),
                      width: 8,
                      height: 8,
                    ),
                  )
                ],
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Color(0xff19184D),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CustomerReviewAndRating()));
              },
            ),
            ListTile(
              leading: const SvgIcon(
                "assets/icons/contact.svg",
                color: Color(0xff19184D),
                height: 16,
                width: 16,
              ),
              title: const Text(
                'Contact Us',
                style: TextStyle(
                  color: Color(0xff19184D),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Color(0xff19184D),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ContactUs()));
              },
            ),
            ListTile(
              leading: const SvgIcon(
                "assets/icons/termsconditions.svg",
                color: Color(0xff19184D),
                height: 16,
                width: 16,
              ),
              title: const Text(
                'Terms & Conditions',
                style: TextStyle(
                  color: Color(0xff19184D),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Color(0xff19184D),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TermsAndCondition()));
              },
            ),
            ListTile(
              leading: const SvgIcon(
                "assets/icons/policy.svg",
                color: Color(0xff19184D),
                height: 16,
                width: 16,
              ),
              title: const Text(
                'Privacy & Policy',
                style: TextStyle(
                  color: Color(0xff19184D),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Color(0xff19184D),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PrivacyAndPolicy()));
              },
            ),
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
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const OnBoardingScreen()));
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
