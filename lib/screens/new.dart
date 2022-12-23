import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child:  Container(
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
                    padding: const EdgeInsets.only(right: 250),
                    child: InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: const Icon(
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
            ),

            CustomListTile("assets/icons/qrcode-solid.svg", 'My Shop QR Code',()=>{}),
            CustomListTile("assets/icons/user.svg",'User Information',()=>{}),
            CustomListTile("assets/icons/passwordlock.svg",'Change Password',()=>{}),
            CustomListTile("assets/icons/report.svg", 'Reports',()=>{}),
            CustomListTile("assets/icons/review.svg",'Customer Review & Rating',(){}),
            CustomListTile("assets/icons/contact.svg",'Contact Us',()=>{}),
            CustomListTile("assets/icons/termsconditions.svg",'Terms & Conditions',()=>{}),
            CustomListTile("assets/icons/policy.svg",'Privacy & Policy',()=>{}),
            
            
          ],
        ),
      ),
      
    );
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
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              Row(
                children:<Widget>[
                  SvgIcon(icon),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(text,style: TextStyle(
                      color: Color(0xff19184D),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),),
                  ),
                ],
              ),
              Icon(Icons.arrow_forward_ios, size: 16,color: Color(0xff19184D),)
            ],
          ),
        ),
      ),
    );
  }
}

